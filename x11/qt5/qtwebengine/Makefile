# $OpenBSD: Makefile,v 1.5 2019/07/13 11:02:18 sthen Exp $

# Many parts are copied from www/chromium port, so keep in sync

ONLY_FOR_ARCHS =	${CLANG_ARCHS} amd64
QT5NAME =		QtWebEngine
REVISION =		0
COMMENT-main =		Chromium-based web engine for Qt5
CATEGORIES =		www
USE_WXNEEDED =		Yes

SHARED_LIBS =		Qt5WebEngine		0.0

MULTI_PACKAGES =	-main -examples

WANTLIB-main =		${WANTLIB}

# BSD-like, patents
PERMIT_PACKAGE =	Yes

COMPILER =		base clang gcc
MODULES =		lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		\
			devel/re2c \
			sysutils/pciutils \

RUN_DEPENDS =		sysutils/pciutils

LIB_DEPENDS =		\
			archivers/minizip \
			audio/pulseaudio \
			archivers/snappy \
			devel/glib2 \
			devel/harfbuzz \
			devel/jsoncpp \
			devel/protobuf \
			graphics/libwebp \
			graphics/png \
			security/libsrtp \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebchannel>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

PATCHORIG =		.orig.port

GN_ARGS=	enable_nacl=false \
		is_debug=false \
		enable_webrtc=false \
		enable_one_click_signin=true \
		use_kerberos=false \
		use_sndio=true \
		use_cups=true \
		use_experimental_allocator_shim=false \
		use_gtk3=true \
		is_clang=true \
		use_sysroot=false \
		treat_warnings_as_errors=false \
		clang_use_chrome_plugins=false \
		use_allocator=\"none\" \
		is_official_build=true \
		fieldtrial_testing_like_official_build=true \
		extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\" \
		extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\"

# Note: these keys are for OpenBSD use ONLY. For your own distribution,
# please get your own set of keys. It's free!
GN_ARGS+=	google_api_key=\"AIzaSyA015yecfJyWi8UQpneQVrNzIKlxjv4MhI\" \
		google_default_client_id=\"451220141585.apps.googleusercontent.com\" \
		google_default_client_secret=\"nQcDyaBvDyCeDrsRqKIWSHJn\" \
		ffmpeg_branding=\"Chrome\" \
		proprietary_codecs=true

.if ${FLAVOR:Mdebug}
GN_ARGS+=	remove_webcore_debug_symbols=true
.endif

MODQMAKE_ARGS =	\
		WEBENGINE_CONFIG+=use_proprietary_codecs \
		WEBENGINE_CONFIG+=use_system_ffmpeg \
		WEBENGINE_CONFIG+=use_system_icu \
		WEBENGINE_CONFIG+=use_system_jsoncpp \
		WEBENGINE_CONFIG+=use_system_libevent \
		WEBENGINE_CONFIG+=use_system_libsrtp \
		WEBENGINE_CONFIG+=use_system_libwebp \
		WEBENGINE_CONFIG+=use_system_libxslt \
		WEBENGINE_CONFIG+=use_system_minizip \
		WEBENGINE_CONFIG+=use_system_opus \
		WEBENGINE_CONFIG+=use_system_snappy \
		WEBENGINE_CONFIG+=use_system_vpx \

.for _v in ${GN_ARGS}
MODQMAKE_ARGS :=	${MODQMAKE_ARGS} WEBENGINE_CONFIG+=${_v}
.endfor

MAKE_ENV =	V=1

SEPARATE_BUILD =	No

UNBUNDLE_LIST =	libevent
CHROMESRC =	${WRKDIST}/src/3rdparty/chromium

post-extract:
	cd ${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome; \
	rm -Rf openbsd; \
	cp -pR linux openbsd
.for f t in linux openbsd desktop_linux desktop_openbsd
	cp ${WRKDIST}/src/core/config/$f.pri ${WRKDIST}/src/core/config/$t.pri
.endfor
# check if needed
.for _arch in x64 ia32
.  for _dir in avcodec avformat avutil
	@cp -pR ${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/lib${_dir} \
		${CHROMESRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/lib${_dir}
.  endfor
.endfor
#	@cd ${CHROMESRC}; \
#	${MODPY_BIN} build/linux/unbundle/remove_bundled_libraries.py \
#	    ${UNBUNDLE_LIST:C,^,base/third_party/,}; \
#	${MODPY_BIN} build/linux/unbundle/replace_gn_files.py \
#	    --system-libraries ${UNBUNDLE_LIST}

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	@mkdir -p ${CHROMESRC}/media/audio/sndio ${CHROMESRC}/media/audio/openbsd
	@cp ${FILESDIR}/sndio_{out,in}put.{cc,h} ${CHROMESRC}/media/audio/sndio
	@cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${CHROMESRC}/media/audio/openbsd
	@mkdir -p ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin
	@ln -sf ${TRUEPREFIX}/bin/node ${CHROMESRC}/third_party/node/openbsd/node-openbsd/bin/node

.include <bsd.port.mk>


#
# Utility targets to make it easier syncing with www/chromium port
#

sync-patches: ${_EXTRACT_COOKIE}
	@! test -e ${_PATCH_COOKIE} || { \
		echo "$@ should be run on unpatched source, e.g., after 'make extract'" >&2; \
		false; \
	}
	@echo "===> removing old auto-copied patches"
	@cd ${PATCHDIR}; for p in patch-*; do \
		test "$$p" = "$${p%.orig}" || continue; \
		egrep -s '^--- src/3rdparty/chromium/' $$p || continue; \
		fgrep -q 'Automatically copied from www/chromium.' $$p || continue; \
		rm $$p; \
	done
	@echo
	@echo "===> copying new patches, preserving existing ones"
	@added= ; skipped= ; \
	cd ${PORTSDIR}/www/chromium/patches; for p in patch-*; do \
		test "$$p" = "$${p%.orig}" || continue; \
		f=$$(awk '/^\+\+\+ / {print $$2}' $$p); \
		test -f ${WRKDIST}/src/3rdparty/chromium/$$f || continue; \
		np=patch-src_3rdparty_chromium_$${p##*/patch-}; \
		if [ -e ${PATCHDIR}/$$np ]; then \
			skipped="$$skipped $$np"; \
			continue; \
		fi; \
		added="$$added $$np"; \
		perl -p -e '$$. == 1 && s,.*,\$$OpenBSD\$$,;' \
		        -e '$$. == 2 && print "Automatically copied from www/chromium.\n\n";' \
		        -e 's,^Index: ,$$&src/3rdparty/chromium/,;' \
		        -e 's,^--- ,$$&src/3rdparty/chromium/,;' \
		        -e 's,^\+\+\+ ,$$&src/3rdparty/chromium/,;' \
		        <$$p >${PATCHDIR}/$$np; \
	done; \
	echo; \
	echo "===> checking new patches for appliability"; \
	failed= ; \
	cd ${WRKDIST}; for p in $$added; do \
		if ! patch -f -C <${PATCHDIR}/$$p >/dev/null 2>&1; then \
			if patch -f -C -R <${PATCHDIR}/$$p >/dev/null 2>&1; then \
				echo "$$p is already there, removing"; \
				rm ${PATCHDIR}/$$p; \
			else \
				failed="$$failed $$p"; \
			fi; \
		fi; \
	done; \
	echo; \
	echo "===> listing patches requring manual handling"; \
	for f in $$skipped $$failed; do echo $$f; done

zap-extra-patches: extract
	mkdir -p ${PATCHDIR}.zapped
	@cd ${PATCHDIR}; for p in patch-*; do \
		test "$$p" = "$${p%.orig}" || continue; \
		f=$$(awk '/^\+\+\+ / {print $$2}' $$p); \
		if ! [ -f ${WRKDIST}/$$f ]; then \
			echo rm "$$p"; \
			mv "$$p" ${PATCHDIR}.zapped; \
		fi; \
	done
