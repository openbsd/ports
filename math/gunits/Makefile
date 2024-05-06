COMMENT=		GNU units conversion program

DISTNAME=		units-2.23
PKGNAME=		g${DISTNAME}
CATEGORIES=		math
SITES=			${SITE_GNU:=units/}
REVISION=		0

HOMEPAGE=		https://www.gnu.org/software/units/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c m readline

MODULES=		lang/python

# needed for 'make test'
MODPY_ADJ_FILES =	units_cur

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix=g \
			--sharedstatedir=${PREFIX}/share

# needs network connection
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
