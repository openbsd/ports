COMMENT=	educational application to solve physics problems

REVISION =	0
VERSION =	0.4.0
DISTNAME =	fisicalab-${VERSION}
PKGNAME =	fisicalab-${VERSION}

HOMEPAGE=	http://www.nongnu.org/fisicalab/
SITES=		${SITE_GNU:=fisicalab/}

#GPLv3

MODULES=	x11/gnustep
WANTLIB =	gsl gslcblas Renaissance
WANTLIB += ${COMPILER_LIBCXX}

LIB_DEPENDS=	devel/gsl \
		x11/gnustep/renaissance

CONFIGURE_STYLE =	gnu

WRKSRC =	${WRKDIR}/trunk

pre-configure:
	cd ${WRKBUILD} && \
		find . -name COPYING.txt~ -delete

CONFIGURE_ENV =	LDFLAGS="`gnustep-config --gui-libs`"

.include <bsd.port.mk>
