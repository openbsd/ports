# $OpenBSD: Makefile,v 1.6 2013/03/11 11:46:16 espie Exp $

COMMENT=		manage opacity property of windows, extended version

DISTNAME=		transset-df-6
REVISION=		1
CATEGORIES=		x11

HOMEPAGE=		http://www.forchheimer.se/transset-df/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender c m \
			pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/transset-df ${PREFIX}/bin

.include <bsd.port.mk>
