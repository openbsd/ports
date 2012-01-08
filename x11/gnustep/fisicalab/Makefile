# $OpenBSD: Makefile,v 1.6 2012/01/08 12:03:09 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	FisicaLab-0.2.1

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

.include <bsd.port.mk>
