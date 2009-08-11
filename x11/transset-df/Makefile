# $OpenBSD: Makefile,v 1.3 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=		manage opacity property of windows, extended version

DISTNAME=		transset-df-6
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

HOMEPAGE=		http://www.forchheimer.se/transset-df/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender c m \
			pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
NO_REGRESS=		Yes
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/transset-df ${PREFIX}/bin

.include <bsd.port.mk>
