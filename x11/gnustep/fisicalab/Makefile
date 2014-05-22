# $OpenBSD: Makefile,v 1.13 2014/05/22 09:48:56 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	fisicalab-0.3.4
REVISION =	0

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
