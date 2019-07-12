# $OpenBSD: Makefile,v 1.41 2019/07/12 20:46:57 sthen Exp $

BROKEN=	ninja: multiple rules generate /usr/obj/ports/digikam-kde4-4.13.0/digikam-4.13.0/core/cmake/templates/Info.plist.cmake.in

COMMENT-face =		face detection library for KDE4
COMMENT-libkipi =	KDE4 image plugins infrastructure
COMMENT-kipi =		KDE4 image plugins collection
COMMENT-dcraw =		KDE4 RAW picture decoding C++ library
COMMENT-sane =		KDE4 SANE (scanner) wrapper library
COMMENT-main =		KDE4 photo management utility
COMMENT-mediawiki =	KIPI4 interface for MediaWiki

CATEGORIES =		graphics
HOMEPAGE =		https://www.digikam.org/
VERSION =		4.13.0
DISTNAME =		digikam-${VERSION}

PKGSPEC-main =		digikam-kde4->=1
PKGSPEC-kipi =		kipi-plugins->=1
PKGSPEC-libkipi =	libkipi-${MODKDE4_SPEC}
PKGSPEC-dcraw =		libkdcraw-${MODKDE4_SPEC}

PKGNAME =		digikam-kde4-${VERSION}
PKGNAME-face =		libkface-15.08.3
PKGNAME-libkipi =	libkipi-${MODKDE4_VERSION}
PKGNAME-dcraw =		libkdcraw-${MODKDE4_VERSION}
PKGNAME-sane =		libksane-${MODKDE4_VERSION}
PKGNAME-kipi =		kipi-plugins-${VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-mediawiki =	libmediawiki-1.0.0

REVISION-main =		10
REVISION-kipi =		11
REVISION-libkface =	3
REVISION-dcraw =	4
REVISION-libkipi =	4
REVISION-sane =		5
REVISION-mediawiki =	8
REVISION-face =		4

# LGPL, GPL and many others
PERMIT_PACKAGE =		Yes

SHARED_LIBS =	kipiplugins		0.1
SHARED_LIBS +=  digikamcore		0.1
SHARED_LIBS +=  digikamdatabase		0.1
SHARED_LIBS +=  mediawiki		0.1
SHARED_LIBS +=  kface                     0.1 # 3.0
SHARED_LIBS +=  kdcraw                    51.0 # 23.0
SHARED_LIBS +=  kipi                      51.0 # 11.1
SHARED_LIBS +=  ksane                     51.0 # 0.2

MULTI_PACKAGES =	-main -face -sane -dcraw -libkipi -kipi -mediawiki

MASTER_SITES =	${MASTER_SITE_KDE:=Attic/digikam/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4 multimedia/phonon

# Do not use WANTLIB due to modules automatically adding to it

WANTLIB-common =  ${MODQT4_WANTLIB} ${MODKDE4_WANTLIB}
WANTLIB-common += m pthread ${COMPILER_LIBCXX}
WANTLIB-common += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB-common += ${KDE4LIB}/kdeui

WANTLIB-kipi =  ${WANTLIB-common}
WANTLIB-kipi += ${MODPHONON_WANTLIB}
WANTLIB-kipi += c GL GLU ICE SM X11 Xext Xrandr expat z
WANTLIB-kipi += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtXmlPatterns
WANTLIB-kipi += lib/qt4/QtTest lib/qt4/QtXml
WANTLIB-kipi += ${KDE4LIB}/kcalcore ${KDE4LIB}/kexiv2
WANTLIB-kipi += ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB-kipi += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB-kipi += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB-kipi += ${KDE4LIB}/threadweaver
WANTLIB-kipi += lib/opencv2/opencv_core lib/opencv2/opencv_highgui
WANTLIB-kipi += lib/opencv2/opencv_imgproc lib/opencv2/opencv_objdetect
WANTLIB-kipi += exslt gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpod
WANTLIB-kipi += gthread-2.0 intl jpeg
WANTLIB-kipi += qjson kqoauth kvkontakte png qca soprano
WANTLIB-kipi += tiff xml2 xslt MagickCore-6.Q16
WANTLIB-kipi += QtGLib-2.0 QtGStreamer-1.0 QtGStreamerUtils-1.0

WANTLIB-main =  ${WANTLIB-common} ${MODPHONON_WANTLIB}
WANTLIB-main += c ICE SM X11 Xext z
WANTLIB-main += lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB-main += lib/qt4/QtTest lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kabc ${KDE4LIB}/kcalcore ${KDE4LIB}/kcmutils
WANTLIB-main += ${KDE4LIB}/kemoticons
WANTLIB-main += ${KDE4LIB}/kexiv2 ${KDE4LIB}/kfile
WANTLIB-main += ${KDE4LIB}/khtml ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB-main += ${KDE4LIB}/kjs ${KDE4LIB}/kmime
WANTLIB-main += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB-main += ${KDE4LIB}/kpimutils ${KDE4LIB}/kprintutils
WANTLIB-main += ${KDE4LIB}/kresources ${KDE4LIB}/kutils
WANTLIB-main += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-main += ${KDE4LIB}/solid ${KDE4LIB}/threadweaver
WANTLIB-main += akonadi-contact akonadi-kde baloocore baloofiles baloopim
WANTLIB-main += balooqueryparser gphoto2 gphoto2_port jasper jpeg
WANTLIB-main += lcms2 lensfun lqr-1 pgf png soprano
WANTLIB-main += sqlite tiff usb
WANTLIB-main += lib/opencv2/opencv_calib3d lib/opencv2/opencv_contrib
WANTLIB-main += lib/opencv2/opencv_core lib/opencv2/opencv_features2d
WANTLIB-main += lib/opencv2/opencv_flann lib/opencv2/opencv_gpu
WANTLIB-main += lib/opencv2/opencv_highgui lib/opencv2/opencv_imgproc
WANTLIB-main += lib/opencv2/opencv_legacy lib/opencv2/opencv_ml
WANTLIB-main += lib/opencv2/opencv_nonfree lib/opencv2/opencv_objdetect
WANTLIB-main += lib/opencv2/opencv_ocl lib/opencv2/opencv_photo
WANTLIB-main += lib/opencv2/opencv_video

WANTLIB-face += ${COMPILER_LIBCXX} QtDBus QtGui QtSql QtSvg QtXml kdeui
WANTLIB-face += m  QtCore kdecore
WANTLIB-face += lib/opencv2/opencv_calib3d lib/opencv2/opencv_contrib
WANTLIB-face += lib/opencv2/opencv_core lib/opencv2/opencv_features2d
WANTLIB-face += lib/opencv2/opencv_flann lib/opencv2/opencv_gpu
WANTLIB-face += lib/opencv2/opencv_highgui lib/opencv2/opencv_imgproc
WANTLIB-face += lib/opencv2/opencv_legacy lib/opencv2/opencv_ml
WANTLIB-face += lib/opencv2/opencv_nonfree lib/opencv2/opencv_objdetect
WANTLIB-face += lib/opencv2/opencv_ocl lib/opencv2/opencv_photo
WANTLIB-face += lib/opencv2/opencv_video

WANTLIB-mediawiki =  ${WANTLIB-common}
WANTLIB-mediawiki += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB-mediawiki += ${KDE4LIB}/kio

WANTLIB-sane += ${WANTLIB-common} sane QtCore ${KDE4LIB}/kdecore

WANTLIB-dcraw += ${WANTLIB-common} QtNetwork QtXml
WANTLIB-dcraw += ${KDE4LIB}/kio raw_r ${KDE4LIB}/solid
WANTLIB-dcraw += ${KDE4LIB}/threadweaver QtCore ${KDE4LIB}/kdecore

WANTLIB-libkipi += ${WANTLIB-common} QtNetwork QtXml
WANTLIB-libkipi += c ${KDE4LIB}/kfile ${KDE4LIB}/kio
WANTLIB-libkipi += ${KDE4LIB}/kparts  ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-libkipi += QtCore ${KDE4LIB}/kdecore soprano

# Define dependencies manually per subpackage
# TODO: fix kde4.port.mk to allow such grained tuning

BUILD_DEPENDS =		devel/bison \
			devel/boost \
			devel/gettext,-tools \
			math/eigen3 \
			misc/shared-desktop-ontologies

RUN_DEPENDS-kipi =	${MODKDE4_RUN_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-desktop-ontologies \
			x11/gtk+3,-guic \
			${MODKDE4_DEP_DIR}/pim-runtime

RUN_DEPENDS-main =	${MODKDE4_RUN_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-desktop-ontologies \
			x11/gtk+3,-guic \
			${MODKDE4_DEP_DIR}/pim-runtime

LIBS_DEPENDS-common =	${MODQT4_LIB_DEPENDS} \
			${MODKDE4_LIB_DEPENDS}

LIB_DEPENDS-kipi =	${LIB_DEPENDS-common} \
			${MODPHONON_LIB_DEPENDS} \
			audio/libgpod \
			devel/qjson>=0.7 \
			graphics/gdk-pixbuf2 \
			graphics/ImageMagick \
			graphics/opencv2 \
			graphics/png \
			graphics/tiff \
			multimedia/qt-gstreamer \
			net/libkvkontakte \
			security/qca \
			security/kqoauth \
			${MODKDE4_DEP_DIR}/libkexiv2 \
			${MODKDE4_DEP_DIR}/pimlibs

LIB_DEPENDS-face =	${LIB_DEPENDS-common} \
			graphics/opencv2

LIB_DEPENDS-main =	${LIB_DEPENDS-common} \
			${MODPHONON_LIB_DEPENDS} \
			databases/sqlite \
			devel/libusb-compat \
			graphics/jasper \
			graphics/lcms2 \
			graphics/lensfun>=0.2.6 \
			graphics/libgphoto2 \
			graphics/liblqr \
			graphics/libpgf \
			graphics/opencv2 \
			graphics/png \
			graphics/tiff \
			${MODKDE4_DEP_DIR}/baloo \
			${MODKDE4_DEP_DIR}/libkexiv2>=4.13 \
			${MODKDE4_DEP_DIR}/pimlibs

LIB_DEPENDS-libkipi=	${LIB_DEPENDS-common}

LIB_DEPENDS-sane =	${LIB_DEPENDS-common} \
			graphics/sane-backends

LIB_DEPENDS-dcraw =	${LIB_DEPENDS-common} \
			graphics/libraw

LIB_DEPENDS-mediawiki =	${LIB_DEPENDS-common}

RUN_DEPENDS-main =	${BASE_PKGPATH},-libkipi \
			${BASE_PKGPATH},-sane \
			${BASE_PKGPATH},-dcraw \
			${BASE_PKGPATH},-face

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Hupnp=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtSoap=Yes \
			-DDIGIKAMSC_COMPILE_LIBKFACE=Yes \
			-DDIGIKAMSC_COMPILE_LIBKGEOMAP=No \
			-DDIGIKAMSC_COMPILE_LIBKSANE=Yes \
			-DDIGIKAMSC_COMPILE_LIBKIPI=Yes \
			-DDIGIKAMSC_COMPILE_LIBKDCRAW=Yes \
			-DENABLE_INTERNALMYSQL=No \
			-DENABLE_KDEPIMLIBSSUPPORT=Yes \
			-DENABLE_LCMS2=Yes

# no official release yet
CONFIGURE_ARGS +=	-DDIGIKAMSC_COMPILE_LIBMEDIAWIKI=Yes

# XXX Don't treat ``DEFINITIONS`` as a built-in directory property
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0059=OLD

FLAVOR ?=

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.arch.mk>

CONFIGURE_ENV =		CXXFLAGS="${CXXFLAGS} -DOPENBSD_LIBKDCRAW_NO_CRASH=0"

post-extract:
	# use our Kexiv2Config.cmake instead
	rm ${WRKSRC}/cmake/modules/FindKexiv2.cmake

# XXX because OBJECT_DEPENDS doesn't work as it should in
# the patches/patch-extra_kipi-plugins_common_libkipiplugins_CMakeLists_txt
pre-build:
	@${MODCMAKE_BUILD_TARGET:S,^${ALL_TARGET}$,kipiplugins-gitversion,}

post-install:
	# these are installed by kde-l10n-* packages
	@find ${PREFIX}/share/locale -name libkipi.mo | xargs -t rm

.include <bsd.port.mk>
