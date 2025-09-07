COMMENT=		string processing library

V=			1.0.2
DISTNAME=		bstring-${V}

SHARED_LIBS +=  bstring              0.0      # 2.0

CATEGORIES=		devel

HOMEPAGE=		https://mike.steinert.ca/bstring/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>


# BSD 3-clause
PERMIT_PACKAGE=	Yes

SITES=			https://github.com/msteinert/bstring/releases/download/v${V}/

BUILD_DEPENDS=		devel/check

CONFIGURE_ENV=		ac_cv_prog_DOXYGEN_PATH= \
			ac_cv_prog_VALGRIND_PATH=

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
