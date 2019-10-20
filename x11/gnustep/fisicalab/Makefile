# $OpenBSD: Makefile,v 1.22 2019/10/20 08:03:01 ajacoutot Exp $

COMMENT=	educational application to solve physics problems

VERSION =	0.3.5
REVISION =	6
DISTNAME =	fisicalab-${VERSION}-1
PKGNAME =	fisicalab-${VERSION}.1

HOMEPAGE=	http://www.nongnu.org/fisicalab/
MASTER_SITES=	${MASTER_SITE_GNU:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB =	gsl gslcblas
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS=	devel/gsl

CONFIGURE_STYLE =	gnu

WRKSRC =	${WRKDIR}/fisicalab-${VERSION}

pre-configure:
	cd ${WRKBUILD} && \
		find . -name COPYING.txt~ -exec rm {} \;

.include <bsd.port.mk>
