# $OpenBSD: Makefile,v 1.9 2009/12/23 22:09:20 jasper Exp $

COMMENT=	interpretive macro/programming language

V=		09-149
DISTNAME=	zoem-${V}
PKGNAME=	zoem-${V:S,-,_,}
CATEGORIES=	textproc lang

HOMEPAGE=	http://micans.org/zoem/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m 

MASTER_SITES=	${HOMEPAGE}/src/

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	docexamplesdir=${PREFIX}/share/examples/zoem/

.include <bsd.port.mk>
