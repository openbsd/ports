# $OpenBSD: Makefile,v 1.11 2009/11/24 09:01:47 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		embedded video player for mozilla

DISTNAME=		mplayerplug-in-3.55
PKGNAME=		${DISTNAME}p2

CATEGORIES=		www

HOMEPAGE=		http://mplayerplug-in.sourceforge.net/

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xpm Xrandr Xrender Xt atk-1.0 cairo
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs xcb z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mplayerplug-in/}

MODULES=		devel/gettext

BUILD_DEPENDS=		${MODGNU_AUTOMAKE_DEPENDS} \
			:xulrunner-devel->=1.8,<1.9:devel/xulrunner/1.8,-devel
LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=		::x11/mplayer

USE_X11=		yes
USE_GMAKE=		yes

AUTOCONF_VERSION=	2.61
AUTOMAKE_VERSION=	1.4
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+= 	--enable-gmp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
			-I${X11BASE}/include \
			-I${LOCALBASE}/xulrunner/include/xpcom -DBSD" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_REGRESS=		Yes

PLUGINS=	mplayerplug-in.so mplayerplug-in-wmp.so \
		mplayerplug-in-qt.so mplayerplug-in-rm.so \
		mplayerplug-in-gmp.so mplayerplug-in-dvx.so

COMPONENTS=	mplayerplug-in.xpt mplayerplug-in-wmp.xpt \
		mplayerplug-in-qt.xpt mplayerplug-in-rm.xpt \
		mplayerplug-in-gmp.xpt mplayerplug-in-dvx.xpt

post-patch:
	@perl -pi -e 's|/etc|${SYSCONFDIR}/mplayerplug-in|g' \
		${WRKDIST}/Source/plugin-setup.cpp
	@cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${LOCALBASE}/bin/aclocal

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mozilla-plugins
.for i in ${PLUGINS} ${COMPONENTS}
	${INSTALL_DATA} ${WRKSRC}/$i \
		${PREFIX}/lib/mozilla-plugins
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mplayerplug-in
	${INSTALL_DATA} ${WRKSRC}/mplayerplug-in.{conf,types} \
		${PREFIX}/share/examples/mplayerplug-in
	@cd ${WRKSRC}/po && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} ${FAKE_TARGET}

.include <bsd.port.mk>
