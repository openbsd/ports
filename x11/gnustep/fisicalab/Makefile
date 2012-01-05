# $OpenBSD: Makefile,v 1.5 2012/01/05 14:42:57 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	FisicaLab-0.2.1

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	http://download.savannah.gnu.org/releases/fisicalab/

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

.include <bsd.port.mk>
