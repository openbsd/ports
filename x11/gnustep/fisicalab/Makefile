COMMENT=	educational application to solve physics problems

VERSION =	0.3.5
REVISION =	10
DISTNAME =	fisicalab-${VERSION}-1
PKGNAME =	fisicalab-${VERSION}.1

HOMEPAGE=	http://www.nongnu.org/fisicalab/
SITES=		${SITE_GNU:=fisicalab/}

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

CONFIGURE_ENV =	LDFLAGS="`gnustep-config --gui-libs`"

.include <bsd.port.mk>
