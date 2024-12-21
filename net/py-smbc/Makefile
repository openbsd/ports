COMMENT=		Python bindings to wrap the libsmbclient API

MODPY_DISTV=	1.0.25.1
DISTNAME=		pysmbc-${MODPY_DISTV}
PKGNAME=		py-smbc-${MODPY_DISTV}
REVISION=		1

CATEGORIES=		net devel

HOMEPAGE=		http://cyberelk.net/tim/software/pysmbc/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += smbclient

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

LIB_DEPENDS=		net/samba

CFLAGS +=		-I${LOCALBASE}/include -DVERSION=\"${MODPY_DISTV}\"
LDFLAGS=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_TEST=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
