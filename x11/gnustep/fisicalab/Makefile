# $OpenBSD: Makefile,v 1.2 2010/11/22 08:36:59 espie Exp $

COMMENT=	educational application to solve physics problems

DISTNAME=	FisicaLab-0.2
PKGNAME=	${DISTNAME:L}

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	http://mirror.its.uidaho.edu/pub/savannah/fisicalab/

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

.include <bsd.port.mk>
