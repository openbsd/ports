# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:02 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Code::Blocks C/C++ IDE

V=		10.05
P=		1
DISTNAME=	codeblocks-${V}-${P}debian-src
PKGNAME=	codeblocks-${V}
REVISION=	6

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

WANTLIB += GL ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 iodbc jpeg m mspack pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndio stdc++ tiff usbhid xcb xcb-render xcb-shm z ffi
WANTLIB += harfbuzz icudata icule icuuc

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

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
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
	${SUBST_CMD} ${WRKSRC}/src/sdk/resources/lexers/lexer_bash.sample \
		${WRKSRC}/src/plugins/compilergcc/compilergcc.cpp
	rm ${WRKSRC}/src/sdk/resources/lexers/lexer_bash.sample.{beforesubst,orig}

# template files are copied to HOME with their original mode which makes
# it impossible to edit them by default
post-install:
	find ${PREFIX}/share/codeblocks/templates/ -type f -perm 444 | \
		xargs chmod 644

.include <bsd.port.mk>
