# $OpenBSD: Makefile,v 1.1.1.1 2007/11/05 20:01:36 jasper Exp $

COMMENT=		manage opacity property of windows, extended version

DISTNAME=		transset-df-6
CATEGORIES=		x11

HOMEPAGE=		http://www.forchheimer.se/transset-df/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender c m

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		::x11/xcompmgr

USE_X11=		Yes
NO_REGRESS=		Yes
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/transset-df ${PREFIX}/bin

.include <bsd.port.mk>
