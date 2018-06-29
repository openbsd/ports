# $OpenBSD: Makefile,v 1.50 2018/06/29 22:16:10 espie Exp $

BROKEN-alpha=	sqvm.cpp:394:1: internal compiler error: Segmentation fault
COMMENT=	Code::Blocks C/C++ IDE

V=		17.12
REVISION=	2
DISTNAME=	codeblocks_${V}
PKGNAME=	codeblocks-${V}
EXTRACT_SUFX=	.tar.xz

WRKDIST=	${WRKDIR}/codeblocks-${V}

SHARED_LIBS +=  codeblocks           0.1      # 0.1
SHARED_LIBS +=  wxchartctrl          0.1      # 0.1
SHARED_LIBS +=  wxflatnotebook       0.1      # 0.1
SHARED_LIBS +=  wxcustombutton       0.1      # 0.1
SHARED_LIBS +=  wximagepanel         0.1      # 0.1
SHARED_LIBS +=  wxspeedbutton        0.1      # 0.1
SHARED_LIBS +=  wxkwic               0.1      # 0.1
SHARED_LIBS +=  wxtreelist           0.1      # 0.1
SHARED_LIBS +=  wxled                0.1      # 0.1
SHARED_LIBS +=  wxsmithlib           0.1      # 0.1
SHARED_LIBS +=  wxmathplot           0.1      # 0.1

CATEGORIES=	devel x11
DPB_PROPERTIES= parallel

MAINTAINER=	Josh Grosse <josh@jggimi.net>
HOMEPAGE=	http://www.codeblocks.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 boost_system bz2 c cairo expat ffi fontconfig
WANTLIB += freetype gamin-1 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz hunspell-1.6 iconv intl iodbc
WANTLIB += jpeg m mspack pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png sndio tiff usbhid wx_base wx_base_net
WANTLIB += wx_base_odbc wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core
WANTLIB += wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext
WANTLIB += wx_gtk2_xrc xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=codeblocks/Sources/${V}/}

BUILD_DEPENDS=	archivers/zip

LIB_DEPENDS=	archivers/bzip2 \
		devel/boost \
		sysutils/gamin \
		textproc/hunspell \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

# XXX <command-line>:0: internal compiler error: Segmentation fault
COMPILER =		base-clang ports-gcc

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

CONFIGURE_STYLE=gnu
CXXFLAGS +=	-std=c++11
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-contrib-plugins=all
CONFIGURE_ARGS += --enable-debug
CONFIGURE_ARGS += --with-boost-libdir=${LOCALBASE}/lib

MAKE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

pre-patch: 
	cd ${WRKSRC}; \
	env \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	${WRKSRC}/bootstrap

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/plugins/compilergcc/compilergcc.cpp

post-install:
	find ${PREFIX}/share/codeblocks -type f -perm 444 \
		-exec chmod 644 '{}' +
	rm ${PREFIX}/lib/codeblocks/plugins/*.{a,la}

.include <bsd.port.mk>
