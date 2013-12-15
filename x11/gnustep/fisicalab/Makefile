# $OpenBSD: Makefile,v 1.11 2013/12/15 09:33:18 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	fisicalab-0.3.3

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

CONFIGURE_STYLE =	gnu

pre-configure:
	cd ${WRKBUILD} && \
		find . -name COPYING.txt~ -exec rm {} \;

.include <bsd.port.mk>
