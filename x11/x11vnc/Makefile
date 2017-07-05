# $OpenBSD: Makefile,v 1.46 2017/07/05 10:22:06 sthen Exp $

COMMENT =		VNC server for real X displays

DISTNAME =		x11vnc-0.9.13
REVISION =		9

CATEGORIES =		x11
HOMEPAGE =		http://www.karlrunge.com/x11vnc/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xdamage Xext Xfixes Xinerama Xrandr Xtst c crypto
WANTLIB += pthread ssl z jpeg avahi-client avahi-common

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libvncserver/}
MODULES =		x11/tk
RUN_DEPENDS =		devel/desktop-file-utils \
			${MODTK_RUN_DEPENDS}
LIB_DEPENDS =		graphics/jpeg \
			net/avahi

AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--with-x \
			--with-avahi
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REORDER_DEPENDENCIES =	${FILESDIR}/automake.dep

pre-configure:
	${SUBST_CMD} ${WRKSRC}/x11vnc/gui.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/x11vnc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/x11vnc

.include <bsd.port.mk>
