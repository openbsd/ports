# $OpenBSD: Makefile,v 1.52 2019/07/12 20:51:25 sthen Exp $

COMMENT =		VNC server for real X displays

GH_ACCOUNT =		LibVNC
GH_PROJECT =		x11vnc
GH_TAGNAME =		0.9.16

CATEGORIES =		x11

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xtst avahi-client avahi-common c cairo crypto
WANTLIB += pthread ssl vncclient vncserver

MODULES =		x11/tk
RUN_DEPENDS =		devel/desktop-file-utils \
			${MODTK_RUN_DEPENDS}
LIB_DEPENDS =		graphics/cairo \
			net/avahi \
			net/libvncserver

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--with-x \
			--with-avahi
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gui.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/x11vnc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/x11vnc

.include <bsd.port.mk>
