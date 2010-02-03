# $OpenBSD: Makefile,v 1.7 2010/02/03 01:05:41 pvalchev Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		Chromium browser

DISTNAME=		chromium-4.0.251.0
PKGNAME =		${DISTNAME}p4

CATEGORIES =		www

HOMEPAGE =		http://sightly.net/peter/openbsd/chromium/

MAINTAINER =		Peter Valchev <pvalchev@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs xcb xml2
WANTLIB += z

MASTER_SITES=	${MASTER_SITE_BACKUP} \
		http://sightly.net/peter/openbsd/chromium/
EXTRACT_SUFX=	.tar.bz2

MODULES =	gcc4 devel/gettext
MODGCC4_ARCHES = *
MODGCC4_LANGS =	c c++

PYTHON_VER=	2.6
RUN_DEPENDS =	::sysutils/gamin
BUILD_DEPENDS =	:python->=${PYTHON_VER}:lang/python/${PYTHON_VER} \
		::devel/gperf \
		::devel/bison \
		::shells/bash
LIB_DEPENDS =	execinfo::devel/libexecinfo \
		nss3,nssutil3,ssl3,smime3,softokn3::security/nss \
		gconf-2::devel/gconf2

# Set BUILDTYPE to Debug (or omit it) for a debug build
BUILDTYPE=	Release
MAKE_ENV =	BUILDTYPE=${BUILDTYPE} V=1 \
		CXX=${LOCALBASE}/bin/eg++ \
		CXX.host=${LOCALBASE}/bin/eg++ \
		LINK.host=${LOCALBASE}/bin/eg++ \
		CC=${LOCALBASE}/bin/egcc

USE_X11 =	Yes
USE_GMAKE =	Yes

NO_REGRESS =	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

ALL_TARGET =	chrome

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

pre-configure:
	@ln -sf ${LOCALBASE}/bin/python${PYTHON_VER} ${WRKDIR}/bin/python

# gyp_chromium generates all the Makefiles from gyp
do-configure:
	@cd ${WRKSRC} && \
	env -i ${CONFIGURE_ENV} python build/gyp_chromium -fmake --ignore-environment \
	-Ibuild/common.gypi -Ibuild/features_override.gypi "--depth=${WRKSRC}" \
	-DOS=openbsd -Duse_system_libxml=1 -Duse_system_libjpeg=1 \
	-Duse_system_libevent=1 build/all.gyp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/chrome
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/chrome
	${INSTALL_SCRIPT} ${FILESDIR}/chrome ${PREFIX}/bin
	@perl -pi -e "s,TRUEPREFIX,${TRUEPREFIX},g" ${PREFIX}/bin/chrome
	${INSTALL_DATA} ${BUILDDIR}/chrome.pak ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/chrome/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/chrome/resources

.include <bsd.port.mk>
