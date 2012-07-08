# $OpenBSD: Makefile,v 1.7 2012/07/08 13:40:41 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	FisicaLab-0.2.2

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

.include <bsd.port.mk>
