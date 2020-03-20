# $OpenBSD: Makefile,v 1.23 2020/03/20 16:44:28 naddy Exp $

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
		find . -name COPYING.txt~ -delete

.include <bsd.port.mk>
