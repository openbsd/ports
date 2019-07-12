# $OpenBSD: Makefile,v 1.23 2019/07/12 20:50:16 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386
USE_WXNEEDED =		Yes

DPB_PROPERTIES =	parallel nojunk

COMMENT =		convert HTML to PDF using Webkit

GH_ACCOUNT =		wkhtmltopdf
GH_PROJECT =		wkhtmltopdf
GH_TAGNAME =		0.12.5
QT_COMMIT =		5db36ec76b29712eb2c5bd0625c2c77d7468b3fc
MASTER_SITES0 =		https://github.com/wkhtmltopdf/qt/archive/
DISTFILES =		${DISTNAME}.tar.gz \
			wkhtmltopdf-qt-${QT_COMMIT}_1{${QT_COMMIT}}.tar.gz:0
REVISION =		1

SHARED_LIBS =		wkhtmltox 0.0 # 0.12

CATEGORIES =		textproc

HOMEPAGE =		http://wkhtmltopdf.org/

MAINTAINER =		Frank Groeneveld <frank@frankgroeneveld.nl>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xrender c fontconfig freetype iconv jpeg m
WANTLIB += png pthread ${COMPILER_LIBCXX} z

WANTLIB += icui18n # dlopen()d via QLibrary

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		converters/libiconv \
			graphics/png \
			graphics/jpeg \
			textproc/icu4c

USE_GMAKE =		Yes
MAKE_FLAGS =		LIBwkhtmltox_VERSION=${LIBwkhtmltox_VERSION}
MAKE_ENV +=		WRKBUILD=${WRKBUILD} \
			PORTS_CC="${CC}" PORTS_CXX="${CXX}"
CONFIGURE_ENV =	PORTS_CC="${CC}" PORTS_CXX="${CXX}"
FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}

SEPARATE_BUILD =	Yes

NO_TEST =		Yes

pre-patch:
	cd ${WRKDIR}/${DISTNAME} && rmdir qt
	cd ${WRKDIR}/${DISTNAME} && mv ../qt-${QT_COMMIT} qt

do-configure:
	mkdir -p ${WRKBUILD}/qt
	# qt config options taken from scripts/build.py
	cd ${WRKBUILD}/qt && \
		env -i ${CONFIGURE_ENV} ${WRKSRC}/qt/configure \
		--prefix=${WRKBUILD}/qt \
		-opensource \
		-confirm-license \
		-fast \
		-release \
		-static \
		-graphicssystem raster \
		-webkit \
		-exceptions \
		-xmlpatterns \
		-system-zlib \
		-system-libpng \
		-system-libjpeg \
		-no-libmng \
		-no-libtiff \
		-no-accessibility \
		-no-stl \
		-no-qt3support \
		-no-phonon \
		-no-phonon-backend \
		-no-opengl \
		-no-declarative \
		-no-script \
		-no-scripttools \
		-no-sql-ibase \
		-no-sql-mysql \
		-no-sql-odbc \
		-no-sql-psql \
		-no-sql-sqlite \
		-no-sql-sqlite2 \
		-no-mmx \
		-no-3dnow \
		-no-sse \
		-no-sse2 \
		-no-multimedia \
		-nomake demos \
		-nomake docs \
		-nomake examples \
		-nomake tools \
		-nomake tests \
		-nomake translations \
		-xrender \
		-largefile \
		-iconv \
		-openssl \
		-no-rpath \
		-no-dbus \
		-no-nis \
		-no-cups \
		-no-pch \
		-no-gtkstyle \
		-no-nas-sound \
		-no-sm \
		-no-xshape \
		-no-xinerama \
		-no-xcursor \
		-no-xfixes \
		-no-xrandr \
		-no-mitshm \
		-no-xinput \
		-no-xkb \
		-no-glib \
		-no-gstreamer \
		-D ENABLE_VIDEO=0 \
		-no-openvg \
		-no-xsync \
		-no-audio-backend \
		-no-sse3 \
		-no-ssse3 \
		-no-sse4.1 \
		-no-sse4.2 \
		-no-avx \
		-no-neon
	cd ${WRKBUILD} && env -i ${CONFIGURE_ENV} qt/bin/qmake \
		${WRKSRC}/wkhtmltopdf.pro

pre-build:
	cd ${WRKBUILD}/qt && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

.include <bsd.port.mk>
