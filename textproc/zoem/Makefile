# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:47 espie Exp $

COMMENT=	interpretive macro/programming language

V=		09-149
DISTNAME=	zoem-${V}
PKGNAME=	zoem-${V:S,-,_,}
CATEGORIES=	textproc lang

HOMEPAGE=	http://micans.org/zoem/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m 

MASTER_SITES=	${HOMEPAGE}/src/

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

FAKE_FLAGS=	docexamplesdir=${PREFIX}/share/examples/zoem/

.include <bsd.port.mk>
