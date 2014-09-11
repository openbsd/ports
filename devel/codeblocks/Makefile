# $OpenBSD: Makefile,v 1.24 2014/09/11 14:02:55 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Code::Blocks C/C++ IDE

V=		13.12
P=		1
DISTNAME=	codeblocks_${V}-${P}
PKGNAME=	codeblocks-${V}

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

CATEGORIES=	devel x11

HOMEPAGE=	http://www.codeblocks.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 c cairo
WANTLIB += expat ffi fontconfig freetype gamin-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz hunspell-1.3 iodbc
WANTLIB += jpeg m mspack pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sndio stdc++
WANTLIB += tiff usbhid wx_base wx_base_net wx_base_odbc wx_base_xml
WANTLIB += wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB += wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=codeblocks/Sources/${V}/}

MODULES=	devel/gettext

BUILD_DEPENDS=	archivers/zip

LIB_DEPENDS=	archivers/bzip2 \
		sysutils/gamin \
		textproc/hunspell \
		x11/wxWidgets

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

# XXX <command-line>:0: internal compiler error: Segmentation fault
MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-contrib-plugins=all

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/plugins/compilergcc/compilergcc.cpp

post-install:
	find ${PREFIX}/share/codeblocks -type f -perm 444 \
		-exec chmod 644 '{}' +
	rm ${PREFIX}/lib/codeblocks/plugins/*.{a,la}

.include <bsd.port.mk>
