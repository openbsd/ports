# $OpenBSD: Makefile,v 1.4 2011/05/15 13:03:26 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME=	FisicaLab-0.2
REVISION =	0

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	http://mirror.its.uidaho.edu/pub/savannah/fisicalab/

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

.include <bsd.port.mk>
