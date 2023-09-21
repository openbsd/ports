COMMENT=	GNU Scientific Library

DISTNAME=	gsl-2.7.1
SHARED_LIBS +=	gslcblas             1.0      # .0.0
SHARED_LIBS +=	gsl                  12.0     # .16.0

CATEGORIES=	devel

HOMEPAGE=	https://www.gnu.org/software/gsl/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

SITES=			${SITE_GNU:=gsl/}

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
