# $OpenBSD: Makefile,v 1.12 2014/03/24 01:49:16 sebastia Exp $

COMMENT=	educational application to solve physics problems

DISTNAME =	fisicalab-0.3.4

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_GNU:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB=	c m pthread gsl gslcblas
LIB_DEPENDS=	devel/gsl

CONFIGURE_STYLE =	gnu

pre-configure:
	cd ${WRKBUILD} && \
		find . -name COPYING.txt~ -exec rm {} \;

.include <bsd.port.mk>
