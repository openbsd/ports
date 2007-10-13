# $OpenBSD: Makefile,v 1.2 2007/10/13 16:05:13 fgsch Exp $

SHARED_ONLY=		Yes

COMMENT=		embedded video player for mozilla

DISTNAME=		mplayerplug-in-3.45
PKGNAME=		${DISTNAME}p0

CATEGORIES=		www

HOMEPAGE=		http://mplayerplug-in.sourceforge.net/

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xpm Xrandr Xrender Xt atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mplayerplug-in/}

MODULES=		devel/gettext

BUILD_DEPENDS=		:mozilla-firefox-devel-*:www/mozilla-firefox,-devel
RUN_DEPENDS=		::www/mozilla-firefox \
			::x11/mplayer

USE_X11=		yes
USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--enable-gmp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			-I${X11BASE}/include -DBSD" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/mplayerplug-in/

PLUGINS=	mplayerplug-in.so mplayerplug-in-wmp.so \
		mplayerplug-in-qt.so mplayerplug-in-rm.so \
		mplayerplug-in-gmp.so mplayerplug-in-dvx.so

COMPONENTS=	mplayerplug-in.xpt mplayerplug-in-wmp.xpt \
		mplayerplug-in-qt.xpt mplayerplug-in-rm.xpt \
		mplayerplug-in-gmp.xpt mplayerplug-in-dvx.xpt

post-patch:
	@perl -pi -e 's|/etc|${SYSCONFDIR}/mplayerplug-in|g' \
	    ${WRKDIST}/Source/plugin-setup.cpp

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/mozilla-firefox/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/mozilla-firefox/components
.for i in ${PLUGINS}
	${INSTALL_DATA} ${WRKSRC}/$i \
		${PREFIX}/mozilla-firefox/plugins
.endfor
.for i in ${COMPONENTS}
	${INSTALL_DATA} ${WRKSRC}/$i \
		${PREFIX}/mozilla-firefox/components
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mplayerplug-in
	${INSTALL_DATA} ${WRKSRC}/mplayerplug-in.{conf,types} \
		${PREFIX}/share/examples/mplayerplug-in
	@cd ${WRKSRC}/po && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${FAKE_FLAGS} ${FAKE_TARGET}

.include <bsd.port.mk>
