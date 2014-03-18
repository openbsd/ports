# $OpenBSD: Makefile,v 1.19 2014/03/18 13:57:04 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Code::Blocks C/C++ IDE

V=		10.05
P=		1
DISTNAME=	codeblocks-${V}-${P}debian-src
PKGNAME=	codeblocks-${V}
REVISION=	9

EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/codeblocks-${V}

SHARED_LIBS +=  codeblocks           0.0      # .0.1
SHARED_LIBS +=  wxsmithlib           0.0      # .0.1
SHARED_LIBS +=  wxchartctrl          0.0      # .0.1
SHARED_LIBS +=  wxflatnotebook       0.0      # .0.1
SHARED_LIBS +=  wxcustombutton       0.0      # .0.1

CATEGORIES=	devel x11

HOMEPAGE=	http://www.codeblocks.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += iodbc jpeg m mspack pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sndio stdc++
WANTLIB += tiff usbhid xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_BERLIOS:=codeblocks/}

BUILD_DEPENDS=	archivers/zip

LIB_DEPENDS=	archivers/bzip2 \
		x11/wxWidgets

WANTLIB +=	bz2>=10 wx_base>=1 wx_base_net wx_base_odbc wx_base_xml \
		wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid \
		wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21 \
		x11/gtk+2,-guic

MODULES=	devel/gettext

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib \
			-Wl,-rpath,${TRUEPREFIX}/lib/wxSmithContribItems"
# XXX lib_finder.cpp:302: error: syntax error before `->' token
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-contrib-plugins=all,-libfinder

post-extract:
	tar xzf ${WRKDIR}/src/codeblocks_${V}-${P}.tar.gz -C ${WRKDIR}

pre-configure:
	ln -s /usr/bin/true ${WRKDIR}/bin/svn
	${SUBST_CMD} ${WRKSRC}/src/plugins/compilergcc/compilergcc.cpp

# template files are copied to HOME with their original mode which makes
# it impossible to edit them by default
post-install:
	find ${PREFIX}/share/codeblocks/templates/ -type f -perm 444 | \
		xargs chmod 644

.include <bsd.port.mk>
