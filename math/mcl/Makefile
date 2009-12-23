# $OpenBSD: Makefile,v 1.10 2009/12/23 22:08:58 jasper Exp $

COMMENT=	clustering algorithm for graphs

V=		09-308
DISTNAME=	mcl-${V}
PKGNAME=	mcl-${V:S,-,_,}
CATEGORIES=	math

HOMEPAGE=	http://micans.org/mcl/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/src/

WANTLIB=	c m pthread

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/mcl/

.include <bsd.port.mk>
