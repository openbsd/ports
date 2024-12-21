COMMENT=		CUPS bindings for Python

MODPY_DISTV=	2.0.4
DISTNAME=		pycups-${MODPY_DISTV}
PKGNAME=		${DISTNAME:S/^py/py-/}
REVISION=		2

CATEGORIES=		print

HOMEPAGE=		http://cyberelk.net/tim/software/pycups/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += cups iconv pthread ${MODPY_WANTLIB}

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

LIB_DEPENDS=		print/cups,-libs \
			${MODPY_LIB_DEPENDS}

CFLAGS +=		-I${LOCALBASE}/include -DVERSION=\"${MODPY_DISTV}\"
LDFLAGS=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}"

NO_TEST=		Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
