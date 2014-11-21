# $OpenBSD: Makefile,v 1.14 2014/11/21 18:21:21 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	fisicalab-0.3.4
REVISION =	1

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_GNU:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB =	gsl gslcblas
LIB_DEPENDS=	devel/gsl

CONFIGURE_STYLE =	gnu

pre-configure:
	cd ${WRKBUILD} && \
		find . -name COPYING.txt~ -exec rm {} \;

.include <bsd.port.mk>
