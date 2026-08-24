/* SPDX-License-Identifier: LGPL-2.1-or-later */
/*
 * Copyright (C) 2019, Google Inc.
 * Copyright (C) 2026, Antoine Jacoutot <ajacoutot@openbsd.org>
 *
 * Pipeline handler for USB video class devices on OpenBSD, based on the
 * uvcvideo pipeline handler. OpenBSD has no media controller API; cameras
 * are discovered by probing /dev/video* nodes directly, in the same way
 * the virtual pipeline handler operates without a media device.
 */

#include <algorithm>
#include <array>
#include <bitset>
#include <cmath>
#include <map>
#include <memory>
#include <optional>
#include <set>
#include <string>
#include <sys/stat.h>
#include <vector>

#include <libcamera/base/log.h>
#include <libcamera/base/mutex.h>
#include <libcamera/base/utils.h>

#include <libcamera/camera.h>
#include <libcamera/control_ids.h>
#include <libcamera/controls.h>
#include <libcamera/property_ids.h>
#include <libcamera/stream.h>

#include "libcamera/internal/camera.h"
#include "libcamera/internal/device_enumerator.h"
#include "libcamera/internal/pipeline_handler.h"
#include "libcamera/internal/request.h"
#include "libcamera/internal/v4l2_videodevice.h"

namespace libcamera {

LOG_DEFINE_CATEGORY(UVCBSD)

class UVCBSDCameraData : public Camera::Private
{
public:
	UVCBSDCameraData(PipelineHandler *pipe)
		: Camera::Private(pipe)
	{
	}

	int init(const std::string &deviceNode);
	void addControl(uint32_t cid, const ControlInfo &v4l2info,
			ControlInfoMap::Map *ctrls);
	void imageBufferReady(FrameBuffer *buffer);

	const std::string &id() const { return id_; }

	Mutex openLock_;
	std::unique_ptr<V4L2VideoDevice> video_;
	Stream stream_;
	std::map<PixelFormat, std::vector<SizeRange>> formats_;

	std::optional<v4l2_exposure_auto_type> autoExposureMode_;
	std::optional<v4l2_exposure_auto_type> manualExposureMode_;

private:
	std::string id_;
};

class UVCBSDCameraConfiguration : public CameraConfiguration
{
public:
	UVCBSDCameraConfiguration(UVCBSDCameraData *data);

	Status validate() override;

private:
	UVCBSDCameraData *data_;
};

class PipelineHandlerUVCBSD : public PipelineHandler
{
public:
	PipelineHandlerUVCBSD(CameraManager *manager);
	~PipelineHandlerUVCBSD();

	std::unique_ptr<CameraConfiguration> generateConfiguration(Camera *camera,
								   Span<const StreamRole> roles) override;
	int configure(Camera *camera, CameraConfiguration *config) override;

	int exportFrameBuffers(Camera *camera, Stream *stream,
			       std::vector<std::unique_ptr<FrameBuffer>> *buffers) override;

	int start(Camera *camera, const ControlList *controls) override;
	void stopDevice(Camera *camera) override;

	int queueRequestDevice(Camera *camera, Request *request) override;

	bool match(DeviceEnumerator *enumerator) override;

private:
	int processControl(const UVCBSDCameraData *data, ControlList *controls,
			   unsigned int id, const ControlValue &value);
	int processControls(UVCBSDCameraData *data, const ControlList &reqControls);

	bool acquireDevice(Camera *camera) override;
	void releaseDevice(Camera *camera) override;

	UVCBSDCameraData *cameraData(Camera *camera)
	{
		return static_cast<UVCBSDCameraData *>(camera->_d());
	}

	/*
	 * This handler probes device nodes and registers all cameras in a
	 * single match() call; the camera manager keeps calling match() on
	 * new handler instances until it returns false, so track whether the
	 * devices have already been claimed across instances.
	 */
	static bool created_;
	bool resetCreated_ = false;
};

bool PipelineHandlerUVCBSD::created_ = false;

namespace {

std::optional<controls::ExposureTimeModeEnum> v4l2ToExposureMode(int32_t x)
{
	using namespace controls;

	switch (x) {
	case V4L2_EXPOSURE_AUTO:
	case V4L2_EXPOSURE_APERTURE_PRIORITY:
		return ExposureTimeModeAuto;
	case V4L2_EXPOSURE_MANUAL:
	case V4L2_EXPOSURE_SHUTTER_PRIORITY:
		return ExposureTimeModeManual;
	default:
		return {};
	}
}

} /* namespace */

UVCBSDCameraConfiguration::UVCBSDCameraConfiguration(UVCBSDCameraData *data)
	: CameraConfiguration(), data_(data)
{
}

CameraConfiguration::Status UVCBSDCameraConfiguration::validate()
{
	Status status = Valid;

	if (config_.empty())
		return Invalid;

	if (sensorConfig)
		return Invalid;

	if (orientation != Orientation::Rotate0) {
		orientation = Orientation::Rotate0;
		status = Adjusted;
	}

	/* Cap the number of entries to the available streams. */
	if (config_.size() > 1) {
		config_.resize(1);
		status = Adjusted;
	}

	StreamConfiguration &cfg = config_[0];
	const StreamFormats &formats = cfg.formats();
	const PixelFormat pixelFormat = cfg.pixelFormat;
	const Size size = cfg.size;

	const std::vector<PixelFormat> pixelFormats = formats.pixelformats();
	auto iter = std::find(pixelFormats.begin(), pixelFormats.end(), pixelFormat);
	if (iter == pixelFormats.end()) {
		cfg.pixelFormat = pixelFormats.front();
		LOG(UVCBSD, Debug)
			<< "Adjusting pixel format from " << pixelFormat
			<< " to " << cfg.pixelFormat;
		status = Adjusted;
	}

	const std::vector<Size> &formatSizes = formats.sizes(cfg.pixelFormat);
	cfg.size = formatSizes.front();
	for (const Size &formatsSize : formatSizes) {
		if (formatsSize > size)
			break;

		cfg.size = formatsSize;
	}

	if (cfg.size != size) {
		LOG(UVCBSD, Debug)
			<< "Adjusting size from " << size << " to " << cfg.size;
		status = Adjusted;
	}

	cfg.bufferCount = 4;

	V4L2DeviceFormat format;
	format.fourcc = data_->video_->toV4L2PixelFormat(cfg.pixelFormat);
	format.size = cfg.size;

	/*
	 * For power-consumption reasons video_ is closed when the camera is
	 * not acquired. Open it here if necessary.
	 */
	{
		bool opened = false;

		MutexLocker locker(data_->openLock_);

		if (!data_->video_->isOpen()) {
			int ret = data_->video_->open();
			if (ret)
				return Invalid;

			opened = true;
		}

		int ret = data_->video_->tryFormat(&format);
		if (opened)
			data_->video_->close();
		if (ret)
			return Invalid;
	}

	cfg.stride = format.planes[0].bpl;
	cfg.frameSize = format.planes[0].size;

	if (cfg.colorSpace != format.colorSpace) {
		cfg.colorSpace = format.colorSpace;
		status = Adjusted;
	}

	return status;
}

PipelineHandlerUVCBSD::PipelineHandlerUVCBSD(CameraManager *manager)
	: PipelineHandler(manager)
{
}

PipelineHandlerUVCBSD::~PipelineHandlerUVCBSD()
{
	if (resetCreated_)
		created_ = false;
}

std::unique_ptr<CameraConfiguration>
PipelineHandlerUVCBSD::generateConfiguration(Camera *camera,
					     Span<const StreamRole> roles)
{
	UVCBSDCameraData *data = cameraData(camera);
	std::unique_ptr<CameraConfiguration> config =
		std::make_unique<UVCBSDCameraConfiguration>(data);

	if (roles.empty())
		return config;

	StreamFormats formats(data->formats_);
	StreamConfiguration cfg(formats);

	cfg.pixelFormat = formats.pixelformats().front();
	cfg.size = formats.sizes(cfg.pixelFormat).back();
	cfg.bufferCount = 4;

	config->addConfiguration(cfg);

	config->validate();

	return config;
}

int PipelineHandlerUVCBSD::configure(Camera *camera, CameraConfiguration *config)
{
	UVCBSDCameraData *data = cameraData(camera);
	StreamConfiguration &cfg = config->at(0);
	int ret;

	V4L2DeviceFormat format;
	format.fourcc = data->video_->toV4L2PixelFormat(cfg.pixelFormat);
	format.size = cfg.size;

	ret = data->video_->setFormat(&format);
	if (ret)
		return ret;

	if (format.size != cfg.size ||
	    format.fourcc != data->video_->toV4L2PixelFormat(cfg.pixelFormat))
		return -EINVAL;

	cfg.setStream(&data->stream_);

	return 0;
}

int PipelineHandlerUVCBSD::exportFrameBuffers(Camera *camera, Stream *stream,
					      std::vector<std::unique_ptr<FrameBuffer>> *buffers)
{
	UVCBSDCameraData *data = cameraData(camera);
	unsigned int count = stream->configuration().bufferCount;

	/*
	 * video(4) has no dma-buf support (VIDIOC_EXPBUF), so buffers can't
	 * be exported and later re-imported in DMABUF mode like the uvcvideo
	 * pipeline handler does. Allocate the V4L2 MMAP buffers and keep them
	 * bound to the device instead; the FrameBuffer planes reference the
	 * video device fd at the offsets reported by VIDIOC_QUERYBUF, and
	 * buffers are queued by index.
	 */
	return data->video_->allocateBuffers(count, buffers);
}

int PipelineHandlerUVCBSD::start(Camera *camera, const ControlList *controls)
{
	UVCBSDCameraData *data = cameraData(camera);
	int ret;

	/* Buffers were bound to the device in exportFrameBuffers(). */

	if (controls) {
		ret = processControls(data, *controls);
		if (ret < 0)
			return ret;
	}

	ret = data->video_->streamOn();
	if (ret < 0)
		return ret;

	return 0;
}

void PipelineHandlerUVCBSD::stopDevice(Camera *camera)
{
	UVCBSDCameraData *data = cameraData(camera);

	/*
	 * Keep the buffers bound to the device so that capture can be
	 * restarted; they are released together with the device in
	 * releaseDevice().
	 */
	data->video_->streamOff();
}

int PipelineHandlerUVCBSD::processControl(const UVCBSDCameraData *data,
					  ControlList *controls,
					  unsigned int id, const ControlValue &value)
{
	uint32_t cid;

	if (id == controls::Brightness)
		cid = V4L2_CID_BRIGHTNESS;
	else if (id == controls::Contrast)
		cid = V4L2_CID_CONTRAST;
	else if (id == controls::Saturation)
		cid = V4L2_CID_SATURATION;
	else if (id == controls::ExposureTimeMode)
		cid = V4L2_CID_EXPOSURE_AUTO;
	else if (id == controls::ExposureTime)
		cid = V4L2_CID_EXPOSURE_ABSOLUTE;
	else if (id == controls::AnalogueGain)
		cid = V4L2_CID_GAIN;
	else if (id == controls::Gamma)
		cid = V4L2_CID_GAMMA;
	else if (id == controls::AeEnable)
		return 0; /* Handled in `Camera::queueRequest()`. */
	else
		return -EINVAL;

	if (controls->infoMap()->find(cid) == controls->infoMap()->end())
		return -EINVAL;

	const ControlInfo &v4l2Info = controls->infoMap()->at(cid);
	int32_t min = v4l2Info.min().get<int32_t>();
	int32_t def = v4l2Info.def().get<int32_t>();
	int32_t max = v4l2Info.max().get<int32_t>();

	/*
	 * See UVCBSDCameraData::addControl() for explanations of the
	 * different value mappings.
	 */
	switch (cid) {
	case V4L2_CID_BRIGHTNESS: {
		float scale = std::max(max - def, def - min);
		float fvalue = value.get<float>() * scale + def;
		controls->set(cid, static_cast<int32_t>(std::lround(fvalue)));
		break;
	}

	case V4L2_CID_SATURATION: {
		float scale = def - min;
		float fvalue = value.get<float>() * scale + min;
		controls->set(cid, static_cast<int32_t>(std::lround(fvalue)));
		break;
	}

	case V4L2_CID_EXPOSURE_AUTO: {
		std::optional<v4l2_exposure_auto_type> mode;

		switch (value.get<int32_t>()) {
		case controls::ExposureTimeModeAuto:
			mode = data->autoExposureMode_;
			break;
		case controls::ExposureTimeModeManual:
			mode = data->manualExposureMode_;
			break;
		}

		if (!mode)
			return -EINVAL;

		controls->set(V4L2_CID_EXPOSURE_AUTO, static_cast<int32_t>(*mode));
		break;
	}

	case V4L2_CID_EXPOSURE_ABSOLUTE:
		controls->set(cid, value.get<int32_t>() / 100);
		break;

	case V4L2_CID_CONTRAST:
	case V4L2_CID_GAIN: {
		float m = (4.0f - 1.0f) / (max - def);
		float p = 1.0f - m * def;

		if (m * min + p < 0.5f) {
			m = (1.0f - 0.5f) / (def - min);
			p = 1.0f - m * def;
		}

		float fvalue = (value.get<float>() - p) / m;
		controls->set(cid, static_cast<int32_t>(std::lround(fvalue)));
		break;
	}

	case V4L2_CID_GAMMA:
		controls->set(cid, static_cast<int32_t>(std::lround(value.get<float>() * 100)));
		break;

	default: {
		int32_t ivalue = value.get<int32_t>();
		controls->set(cid, ivalue);
		break;
	}
	}

	return 0;
}

int PipelineHandlerUVCBSD::processControls(UVCBSDCameraData *data,
					   const ControlList &reqControls)
{
	ControlList controls(data->video_->controls());

	for (const auto &[id, value] : reqControls)
		processControl(data, &controls, id, value);

	if (controls.empty())
		return 0;

	for (const auto &ctrl : controls)
		LOG(UVCBSD, Debug)
			<< "Setting control " << utils::hex(ctrl.first)
			<< " to " << ctrl.second.toString();

	int ret = data->video_->setControls(&controls);
	if (ret) {
		LOG(UVCBSD, Error) << "Failed to set controls: " << ret;
		return ret;
	}

	return ret;
}

int PipelineHandlerUVCBSD::queueRequestDevice(Camera *camera, Request *request)
{
	UVCBSDCameraData *data = cameraData(camera);
	FrameBuffer *buffer = request->findBuffer(&data->stream_);
	if (!buffer) {
		LOG(UVCBSD, Error)
			<< "Attempt to queue request with invalid stream";

		return -ENOENT;
	}

	int ret = processControls(data, request->controls());
	if (ret < 0)
		return ret;

	ret = data->video_->queueBuffer(buffer);
	if (ret < 0)
		return ret;

	return 0;
}

bool PipelineHandlerUVCBSD::match([[maybe_unused]] DeviceEnumerator *enumerator)
{
	/*
	 * There is no media controller API on OpenBSD; probe the video(4)
	 * device nodes directly, like the virtual pipeline handler this
	 * function does not use the enumerator.
	 */
	if (created_)
		return false;

	created_ = true;

	bool registered = false;

	for (unsigned int i = 0; i < 8; i++) {
		std::string deviceNode = "/dev/video" + std::to_string(i);
		struct stat st;

		if (stat(deviceNode.c_str(), &st) < 0 || !S_ISCHR(st.st_mode))
			continue;

		std::unique_ptr<UVCBSDCameraData> data =
			std::make_unique<UVCBSDCameraData>(this);

		if (data->init(deviceNode)) {
			LOG(UVCBSD, Debug)
				<< "Could not initialise " << deviceNode;
			continue;
		}

		/* Create and register the camera. */
		std::string id = data->id();
		std::set<Stream *> streams{ &data->stream_ };
		std::shared_ptr<Camera> camera =
			Camera::create(std::move(data), id, streams);
		registerCamera(std::move(camera));

		registered = true;
	}

	if (registered)
		resetCreated_ = true;
	else
		created_ = false;

	return registered;
}

bool PipelineHandlerUVCBSD::acquireDevice(Camera *camera)
{
	UVCBSDCameraData *data = cameraData(camera);

	MutexLocker locker(data->openLock_);

	return data->video_->open() == 0;
}

void PipelineHandlerUVCBSD::releaseDevice(Camera *camera)
{
	UVCBSDCameraData *data = cameraData(camera);

	MutexLocker locker(data->openLock_);
	data->video_->releaseBuffers();
	data->video_->close();
}

int UVCBSDCameraData::init(const std::string &deviceNode)
{
	int ret;

	/* Create and open the video device. */
	video_ = std::make_unique<V4L2VideoDevice>(deviceNode);
	ret = video_->open();
	if (ret)
		return ret;

	if (!(video_->caps().isVideoCapture())) {
		video_->close();
		return -ENODEV;
	}

	video_->bufferReady.connect(this, &UVCBSDCameraData::imageBufferReady);

	/*
	 * Generate the camera ID from the device node. The device node to
	 * hardware assignment is not guaranteed to be stable across reboots
	 * or replugs, but OpenBSD provides no stable hardware path for video
	 * devices. The human readable device name is exposed through the
	 * Model property instead.
	 */
	id_ = "uvcbsd:" + deviceNode;

	/*
	 * Populate the map of supported formats, and infer the camera sensor
	 * resolution from the largest size it advertises.
	 */
	Size resolution;
	for (const auto &format : video_->formats()) {
		PixelFormat pixelFormat = format.first.toPixelFormat();
		if (!pixelFormat.isValid())
			continue;

		formats_[pixelFormat] = format.second;

		const std::vector<SizeRange> &sizeRanges = format.second;
		for (const SizeRange &sizeRange : sizeRanges) {
			if (sizeRange.max > resolution)
				resolution = sizeRange.max;
		}
	}

	if (formats_.empty()) {
		LOG(UVCBSD, Error)
			<< "Camera " << id_
			<< " doesn't expose any supported format";
		video_->close();
		return -EINVAL;
	}

	/* Populate the camera properties. */
	properties_.set(properties::Model, utils::toAscii(video_->deviceName()));

	/*
	 * There is no way to tell internal and external cameras apart;
	 * consider all cameras external.
	 */
	properties_.set(properties::Location, properties::CameraLocationExternal);

	properties_.set(properties::PixelArraySize, resolution);
	properties_.set(properties::PixelArrayActiveAreas, { Rectangle(resolution) });

	/* Initialise the supported controls. */
	ControlInfoMap::Map ctrls;

	for (const auto &ctrl : video_->controls()) {
		uint32_t cid = ctrl.first->id();
		const ControlInfo &info = ctrl.second;

		addControl(cid, info, &ctrls);
	}

	if (autoExposureMode_ && manualExposureMode_) {
		/* \todo Move this to the Camera class */
		ctrls[&controls::AeEnable] = ControlInfo(false, true, true);
	}

	controlInfo_ = ControlInfoMap(std::move(ctrls), controls::controls);

	/*
	 * Close to allow the camera to be used by other processes, video_
	 * will be re-opened from acquireDevice() and validate().
	 */
	video_->close();

	return 0;
}

void UVCBSDCameraData::addControl(uint32_t cid, const ControlInfo &v4l2Info,
				  ControlInfoMap::Map *ctrls)
{
	const ControlId *id;
	ControlInfo info;

	/* Map the control ID. */
	switch (cid) {
	case V4L2_CID_BRIGHTNESS:
		id = &controls::Brightness;
		break;
	case V4L2_CID_CONTRAST:
		id = &controls::Contrast;
		break;
	case V4L2_CID_SATURATION:
		id = &controls::Saturation;
		break;
	case V4L2_CID_EXPOSURE_AUTO:
		id = &controls::ExposureTimeMode;
		break;
	case V4L2_CID_EXPOSURE_ABSOLUTE:
		id = &controls::ExposureTime;
		break;
	case V4L2_CID_GAIN:
		id = &controls::AnalogueGain;
		break;
	case V4L2_CID_GAMMA:
		id = &controls::Gamma;
		break;
	default:
		return;
	}

	/* Map the control info. */
	const std::vector<ControlValue> &v4l2Values = v4l2Info.values();
	int32_t min = v4l2Info.min().get<int32_t>();
	int32_t max = v4l2Info.max().get<int32_t>();
	int32_t def = v4l2Info.def().get<int32_t>();

	switch (cid) {
	case V4L2_CID_BRIGHTNESS: {
		/*
		 * The Brightness control is a float, with 0.0 mapped to the
		 * default value. The control range is [-1.0, 1.0], but the
		 * V4L2 default may not be in the middle of the V4L2 range.
		 * Accommodate this by restricting the range of the libcamera
		 * control, but always within the maximum limits.
		 */
		if (min == def && def == max)
			return;

		float scale = std::max(max - def, def - min);

		info = ControlInfo{
			{ static_cast<float>(min - def) / scale },
			{ static_cast<float>(max - def) / scale },
			{ 0.0f }
		};
		break;
	}

	case V4L2_CID_SATURATION:
		/*
		 * The Saturation control is a float, with 0.0 mapped to the
		 * minimum value (corresponding to a fully desaturated image)
		 * and 1.0 mapped to the default value. Calculate the maximum
		 * value accordingly.
		 */
		if (def == min)
			return;

		info = ControlInfo{
			{ 0.0f },
			{ static_cast<float>(max - min) / (def - min) },
			{ 1.0f }
		};
		break;

	case V4L2_CID_EXPOSURE_AUTO: {
		/*
		 * ExposureTimeModeAuto = { V4L2_EXPOSURE_AUTO,
		 *			    V4L2_EXPOSURE_APERTURE_PRIORITY }
		 *
		 * ExposureTimeModeManual = { V4L2_EXPOSURE_MANUAL,
		 *			      V4L2_EXPOSURE_SHUTTER_PRIORITY }
		 */
		std::bitset<
			std::max(V4L2_EXPOSURE_AUTO,
			std::max(V4L2_EXPOSURE_APERTURE_PRIORITY,
			std::max(V4L2_EXPOSURE_MANUAL,
				 V4L2_EXPOSURE_SHUTTER_PRIORITY))) + 1
		> exposureModes;
		std::optional<controls::ExposureTimeModeEnum> lcDef;

		for (const ControlValue &value : v4l2Values) {
			const auto x = value.get<int32_t>();

			if (0 <= x && static_cast<std::size_t>(x) < exposureModes.size()) {
				exposureModes[x] = true;

				if (x == def)
					lcDef = v4l2ToExposureMode(x);
			}
		}

		if (exposureModes[V4L2_EXPOSURE_AUTO])
			autoExposureMode_ = V4L2_EXPOSURE_AUTO;
		else if (exposureModes[V4L2_EXPOSURE_APERTURE_PRIORITY])
			autoExposureMode_ = V4L2_EXPOSURE_APERTURE_PRIORITY;

		if (exposureModes[V4L2_EXPOSURE_SHUTTER_PRIORITY])
			manualExposureMode_ = V4L2_EXPOSURE_SHUTTER_PRIORITY;
		else if (exposureModes[V4L2_EXPOSURE_MANUAL])
			manualExposureMode_ = V4L2_EXPOSURE_MANUAL;

		std::array<ControlValue, 2> values;
		std::size_t count = 0;

		if (autoExposureMode_)
			values[count++] = controls::ExposureTimeModeAuto;

		if (manualExposureMode_)
			values[count++] = controls::ExposureTimeModeManual;

		if (count == 0)
			return;

		info = ControlInfo{
			Span<const ControlValue>{ values.data(), count },
			!lcDef ? values.front() : *lcDef,
		};
		break;
	}
	case V4L2_CID_EXPOSURE_ABSOLUTE:
		/*
		 * ExposureTime is in units of 1 µs, and UVC expects
		 * V4L2_CID_EXPOSURE_ABSOLUTE in units of 100 µs.
		 */
		info = ControlInfo{
			{ min * 100 },
			{ max * 100 },
			{ def * 100 }
		};
		break;

	case V4L2_CID_CONTRAST:
	case V4L2_CID_GAIN: {
		/*
		 * The Contrast and AnalogueGain controls are floats, with 1.0
		 * mapped to the default value. UVC doesn't specify units, and
		 * cameras have been seen to expose very different ranges for
		 * the controls. Arbitrarily assume that the minimum and
		 * maximum values are respectively no lower than 0.5 and no
		 * higher than 4.0.
		 */
		if (max == def || def == min)
			return;

		float m = (4.0f - 1.0f) / (max - def);
		float p = 1.0f - m * def;

		if (m * min + p < 0.5f) {
			m = (1.0f - 0.5f) / (def - min);
			p = 1.0f - m * def;
		}

		info = ControlInfo{
			{ m * min + p },
			{ m * max + p },
			{ 1.0f }
		};
		break;
	}

	case V4L2_CID_GAMMA:
		/* UVC gamma is in units of 1/100 gamma. */
		info = ControlInfo{
			{ min / 100.0f },
			{ max / 100.0f },
			{ def / 100.0f }
		};
		break;

	default:
		info = v4l2Info;
		break;
	}

	ctrls->emplace(id, info);
}

void UVCBSDCameraData::imageBufferReady(FrameBuffer *buffer)
{
	Request *request = buffer->request();

	request->_d()->metadata().set(controls::SensorTimestamp,
				      buffer->metadata().timestamp);

	pipe()->completeBuffer(request, buffer);
	pipe()->completeRequest(request);
}

REGISTER_PIPELINE_HANDLER(PipelineHandlerUVCBSD, "uvcbsd")

} /* namespace libcamera */
