COMMENT =	pinentry for tiling window manager

GH_ACCOUNT =	ritze
GH_PROJECT =	pinentry-dmenu
GH_TAGNAME =	0.2.2

CATEGORIES =	security

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xft Xinerama assuan c config fontconfig
WANTLIB += gpg-error gpgme

LIB_DEPENDS =	devel/libconfig \
		security/gpgme,-main \
		security/libassuan \
		security/libgpg-error

post-patch:
	${SUBST_CMD} ${WRKSRC}/config.mk

.include <bsd.port.mk>
