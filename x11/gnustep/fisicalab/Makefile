# $OpenBSD: Makefile,v 1.8 2012/08/22 07:15:52 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	FisicaLab-0.2.2
REVISION =	0

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

.include <bsd.port.mk>
