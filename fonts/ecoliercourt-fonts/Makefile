# $OpenBSD: Makefile,v 1.6 2016/09/08 17:32:57 jasper Exp $

COMMENT=	dip pen style TTF fonts

TYPEFACE=	ecoliercourt
DISTNAME=	${TYPEFACE}-fonts-0.1
DISTFILES=	ecl_cour.ttf ec_cour.ttf

REVISION=	2

CATEGORIES=	fonts x11 education

# Open Font License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://distfiles.bsdfrog.org/

MODULES=	font

DIST_SUBDIR=	ecoliercourt
EXTRACT_ONLY=

NO_BUILD=	Yes

pre-install:
	cp ${FULLDISTDIR}/*.ttf ${WRKSRC}

.include <bsd.port.mk>
