COMMENT=		manage opacity property of windows, extended version

DISTNAME=		transset-df-6
REVISION=		3
CATEGORIES=		x11

HOMEPAGE=		http://www.forchheimer.se/transset-df/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender c m \
			xcb

SITES=			${HOMEPAGE}

NO_TEST=		Yes
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/transset-df ${PREFIX}/bin

.include <bsd.port.mk>
