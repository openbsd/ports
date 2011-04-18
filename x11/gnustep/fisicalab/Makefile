# $OpenBSD: Makefile,v 1.3 2011/04/18 11:59:05 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME=	FisicaLab-0.2
REVISION =	0
PKGNAME=	${DISTNAME:L}

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	http://mirror.its.uidaho.edu/pub/savannah/fisicalab/

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

.include <bsd.port.mk>
