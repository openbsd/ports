# $OpenBSD: Makefile,v 1.36 2019/05/27 11:45:38 cwen Exp $

COMMENT=	interface to the LZO compression library

DISTNAME=	Compress-LZO-1.09
CATEGORIES=	archivers

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
