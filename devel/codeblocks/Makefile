# $OpenBSD: Makefile,v 1.41 2017/07/26 22:45:17 sthen Exp $

BROKEN-alpha=	sqvm.cpp:394:1: internal compiler error: Segmentation fault
BROKEN-arm=	wxwidgets va_list c++ mangling requires gcc < 4.4
COMMENT=	Code::Blocks C/C++ IDE

V=		16.01
DISTNAME=	codeblocks_${V}
PKGNAME=	codeblocks-${V}
REVISION=	2

WRKDIST=	${WRKDIR}/codeblocks-${V}.release

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

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 c cairo
WANTLIB += expat ffi fontconfig freetype gamin-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz hunspell-1.6 iodbc
WANTLIB += jpeg m mspack pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sndio ${LIBCXX}
WANTLIB += tiff usbhid wx_base wx_base_net wx_base_odbc wx_base_xml
WANTLIB += wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB += wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc
WANTLIB += xcb xcb-render xcb-shm z ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=codeblocks/Sources/${V}/}

MODULES=	devel/gettext

BUILD_DEPENDS=	archivers/zip \
		devel/boost

LIB_DEPENDS=	archivers/bzip2 \
		sysutils/gamin \
		textproc/hunspell \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

# XXX <command-line>:0: internal compiler error: Segmentation fault
COMPILER =		gcc

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

CONFIGURE_STYLE=gnu
# nullptr test must pass
CXXFLAGS +=	-std=c++11 -Wno-c++11-narrowing
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-contrib-plugins=all

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
