# $OpenBSD: Makefile,v 1.38 2020/07/03 21:44:29 sthen Exp $

COMMENT=	interface to the LZO compression library

DISTNAME=	Compress-LZO-1.09
CATEGORIES=	archivers
REVISION=	0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+=	c lzo2 perl

MODULES=	cpan

BUILD_DEPENDS=	devel/p5-Devel-CheckLib>=0.9

LIB_DEPENDS=	archivers/lzo2

# We can't enable RELEASE_TESTING due to several depends missing
# in the ports tree
MAKE_ENV+=	TEST_POD=Yes AUTHOR_TESTING=Yes RELEASE_TESTING=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
