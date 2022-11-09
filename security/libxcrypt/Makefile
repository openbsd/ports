COMMENT=		library for one-way hashing of passwords

GH_ACCOUNT=		besser82
GH_PROJECT=		libxcrypt
GH_TAGNAME=		v4.4.30

SHARED_LIBS +=	crypt                     0.0 # 2.0

CATEGORIES=		security

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_RUNDEP=		No

USE_GMAKE=		Yes

BUILD_DEPENDS=		security/py-passlib${MODPY_FLAVOR}

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--disable-valgrind

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
