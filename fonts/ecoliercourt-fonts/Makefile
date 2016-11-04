# $OpenBSD: Makefile,v 1.7 2016/11/04 15:53:59 rpe Exp $

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
NO_TEST=	Yes

pre-install:
	cp ${FULLDISTDIR}/*.ttf ${WRKSRC}

.include <bsd.port.mk>
