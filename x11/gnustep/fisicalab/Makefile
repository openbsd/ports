# $OpenBSD: Makefile,v 1.10 2013/10/19 13:24:58 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	fisicalab-0.3.2
REVISION =	0

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
