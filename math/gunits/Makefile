BROKEN-sparc64= relocation truncated to fit: R_SPARC_GOT13 against symbol...
COMMENT=		GNU units conversion program

DISTNAME=		units-2.27
PKGNAME=		g${DISTNAME}
CATEGORIES=		math
SITES=			${SITE_GNU:=units/}

HOMEPAGE=		https://www.gnu.org/software/units/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c m readline

MODULES=		lang/python

# needed for 'make test'
MODPY_ADJ_FILES =	units_cur

RUN_DEPENDS=		www/py-requests

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix=g \
			--sharedstatedir=${PREFIX}/share

# XXX units.c:5845:43: error: use of undeclared identifier 'DBL_DECIMAL_DIG'
CFLAGS +=		-DDBL_DECIMAL_DIG=__DBL_DECIMAL_DIG__

# needs network connection
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
