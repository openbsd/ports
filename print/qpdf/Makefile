# XXX usually fails to build when an earlier version is installed

COMMENT=	PDF transformation and inspection utility

DISTNAME=	qpdf-11.9.1

SHARED_LIBS +=  qpdf 10.3

CATEGORIES=	print graphics

HOMEPAGE=	https://qpdf.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Artistic License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto gnutls jpeg m ssl z

COMPILER=	base-clang ports-gcc base-gcc

SITES=		${SITE_SOURCEFORGE:=qpdf/}

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg \
		security/gnutls

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
