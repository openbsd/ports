# $OpenBSD: Makefile,v 1.15 2015/07/13 16:33:03 zhuk Exp $

COMMENT-kipi =		KDE image plugins collection
COMMENT-main =		KDE photo management utility
COMMENT-mediawiki =	KIPI interface for MediaWiki

CATEGORIES =		graphics
HOMEPAGE =		http://www.digikam.org/
VERSION =		4.11.0
DISTNAME =		digikam-${VERSION}

PKGSPEC-main =		digikam->=1
PKGSPEC-kipi =		kipi-plugins->=1

PKGNAME-kipi =		kipi-plugins-${VERSION}
PKGNAME-main =		${PKGNAME}
PKGNAME-mediawiki =	libmediawiki-1.0.0

REVISION-main =		0
REVISION-kipi =		0
REVISION-mediawiki =	3

EXTRACT_SUFX =		.tar.bz2

# LGPL, GPL and many others
PERMIT_PACKAGE_CDROM =		Yes

SHARED_LIBS =	kipiplugins		0.1
SHARED_LIBS +=  digikamcore		0.1
SHARED_LIBS +=  digikamdatabase		0.1
SHARED_LIBS +=  mediawiki		0.1

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/}

MULTI_PACKAGES =	-main -kipi -mediawiki

MODULES =		x11/kde4 multimedia/phonon devel/gettext

# Do not use WANTLIB due to gettext module automatically adding to it

WANTLIB-common =  ${MODQT4_WANTLIB} ${MODKDE4_WANTLIB}
WANTLIB-common += m pthread ${MODGCC4_CPPWANTLIB}
WANTLIB-common += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB-common += ${KDE4LIB}/kdeui

WANTLIB-kipi =  ${WANTLIB-common}
WANTLIB-kipi += ${MODGETTEXT_WANTLIB} ${MODPHONON_WANTLIB}
WANTLIB-kipi += c GL GLU ICE SM X11 Xext Xrandr expat z
WANTLIB-kipi += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtXmlPatterns
WANTLIB-kipi += lib/qt4/QtTest lib/qt4/QtXml
WANTLIB-kipi += ${KDE4LIB}/kcalcore ${KDE4LIB}/kdcraw ${KDE4LIB}/kexiv2
WANTLIB-kipi += ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB-kipi += ${KDE4LIB}/kio ${KDE4LIB}/kipi ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB-kipi += ${KDE4LIB}/ksane
WANTLIB-kipi += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB-kipi += ${KDE4LIB}/threadweaver
WANTLIB-kipi += opencv_core opencv_highgui opencv_imgproc opencv_objdetect
WANTLIB-kipi += exslt gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpod
WANTLIB-kipi += gthread-2.0 jpeg
WANTLIB-kipi += qjson kgeomap kqoauth kvkontakte mediawiki png qca2 soprano
WANTLIB-kipi += tiff xml2 xslt MagickCore
WANTLIB-kipi += QtGLib-2.0 QtGStreamer-1.0 QtGStreamerUtils-1.0

WANTLIB-main =  ${WANTLIB-common} ${MODPHONON_WANTLIB}
WANTLIB-main += c ICE SM X11 Xext z
WANTLIB-main += lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB-main += lib/qt4/QtTest lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kabc ${KDE4LIB}/kcalcore ${KDE4LIB}/kcmutils
WANTLIB-main += ${KDE4LIB}/kdcraw ${KDE4LIB}/kemoticons
WANTLIB-main += ${KDE4LIB}/kexiv2 ${KDE4LIB}/kfile
WANTLIB-main += ${KDE4LIB}/khtml ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB-main += ${KDE4LIB}/kipi ${KDE4LIB}/kjs ${KDE4LIB}/kmime
WANTLIB-main += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB-main += ${KDE4LIB}/kpimutils ${KDE4LIB}/kprintutils
WANTLIB-main += ${KDE4LIB}/kresources ${KDE4LIB}/kutils
WANTLIB-main += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-main += ${KDE4LIB}/solid ${KDE4LIB}/threadweaver
WANTLIB-main += opencv_calib3d opencv_contrib opencv_core opencv_features2d
WANTLIB-main += opencv_flann opencv_gpu opencv_highgui opencv_imgproc
WANTLIB-main += opencv_legacy opencv_ml opencv_nonfree opencv_objdetect
WANTLIB-main += opencv_ocl opencv_photo opencv_video
WANTLIB-main += akonadi-contact akonadi-kde baloocore baloofiles baloopim
WANTLIB-main += balooqueryparser exif gphoto2 gphoto2_port jasper jpeg
WANTLIB-main += kface kgeomap lcms2 lensfun lqr-1 pgf png soprano
WANTLIB-main += sqlite tiff usb

WANTLIB-mediawiki =  ${WANTLIB-common}
WANTLIB-mediawiki += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB-mediawiki += ${KDE4LIB}/kio

# Define dependencies manually per subpackage
# TODO: fix kde4.port.mk to allow such grained tuning

BUILD_DEPENDS =		devel/bison \
			devel/boost \
			devel/doxygen \
			devel/flex \
			databases/mariadb,-server \
			math/eigen3 \
			misc/shared-desktop-ontologies

RUN_DEPENDS-kipi =	${MODGETTEXT_RUN_DEPENDS} \
			${MODKDE4_RUN_DEPENDS} \
			devel/desktop-file-utils \
			misc/shared-desktop-ontologies \
			x11/gtk+3,-guic \
			${MODKDE4_DEP_DIR}/pim-runtime

RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS} \
			${MODKDE4_RUN_DEPENDS} \
			devel/desktop-file-utils \
			databases/mariadb,-server \
			misc/shared-desktop-ontologies \
			x11/gtk+3,-guic \
			${MODKDE4_DEP_DIR}/pim-runtime

LIBS_DEPENDS-common =	${MODQT4_LIB_DEPENDS} \
			${MODKDE4_LIB_DEPENDS}

LIB_DEPENDS-kipi =	${LIB_DEPENDS-common} \
			${MODGETTEXT_LIB_DEPENDS} \
			${MODPHONON_LIB_DEPENDS} \
			${BASE_PKGPATH},-mediawiki \
			audio/libgpod \
			devel/glib2 \
			devel/qjson>=0.7 \
			graphics/gdk-pixbuf2 \
			graphics/ImageMagick \
			graphics/opencv>=2.4.9 \
			graphics/png \
			graphics/tiff \
			multimedia/qt-gstreamer \
			net/libkvkontakte \
			security/qca2 \
			security/kqoauth \
			x11/kde-applications/libkgeomap>=15.04.3 \
			${MODKDE4_DEP_DIR}/libkdcraw \
			${MODKDE4_DEP_DIR}/libkexiv2 \
			${MODKDE4_DEP_DIR}/libkipi \
			${MODKDE4_DEP_DIR}/libksane \
			${MODKDE4_DEP_DIR}/pimlibs

LIB_DEPENDS-main =	${LIB_DEPENDS-common} \
			${MODPHONON_LIB_DEPENDS} \
			databases/sqlite \
			devel/glib2 \
			devel/libusb-compat \
			graphics/jasper \
			graphics/lcms2 \
			graphics/lensfun>=0.2.6 \
			graphics/libgphoto2 \
			graphics/liblqr \
			graphics/libpgf \
			graphics/opencv>=2.4.9 \
			graphics/png \
			graphics/tiff \
			x11/kde-applications/libkface>=15.04.3 \
			x11/kde-applications/libkgeomap>=15.04.3 \
			${MODKDE4_DEP_DIR}/baloo \
			${MODKDE4_DEP_DIR}/libkdcraw>=4.13 \
			${MODKDE4_DEP_DIR}/libkexiv2>=4.13 \
			${MODKDE4_DEP_DIR}/libkipi>=4.13 \
			${MODKDE4_DEP_DIR}/pimlibs

LIB_DEPENDS-mediawiki =	${LIB_DEPENDS-common}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Hupnp:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_QtSoap:Bool=Yes \
			-DENABLE_INTERNALMYSQL:Bool=No \
			-DENABLE_KDEPIMLIBSSUPPORT:Bool=Yes \
			-DENABLE_LCMS2:Bool=Yes

# no official release yet
CONFIGURE_ARGS +=	-DDIGIKAMSC_COMPILE_LIBMEDIAWIKI=Yes

FLAVOR ?=

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.arch.mk>

# XXX should fix OpenCV CMake config on Java-enabled archs instead!
.if ${ARCH} == "amd64"
BUILD_DEPENDS +=        graphics/opencv,-java
.endif

#.if ${ARCH} == "i386"
CONFIGURE_ENV =		CXXFLAGS="${CXXFLAGS} -DOPENBSD_LIBKDCRAW_NO_CRASH=0"
#.else
#CONFIGURE_ENV =		CXXFLAGS="${CXXFLAGS} -DOPENBSD_LIBKDCRAW_NO_CRASH=1"
#.endif

post-extract:
	# use our Kexiv2Config.cmake instead
	rm ${WRKSRC}/cmake/modules/FindKexiv2.cmake
	# doesn't work with recent versions of libvkontakte
	rm ${WRKSRC}/cmake/modules/FindLibKVkontakte.cmake

# XXX because OBJECT_DEPENDS doesn't work as it should in
# the patches/patch-extra_kipi-plugins_common_libkipiplugins_CMakeLists_txt
pre-build:
	@${MODCMAKE_BUILD_TARGET:S,^${ALL_TARGET}$,kipiplugins-gitversion,}

post-install:
	# these are installed by kde-l10n-* packages
	@find ${PREFIX}/share/locale -name libkipi.mo | xargs -t rm

.include <bsd.port.mk>
