COMMENT=	small SSH server and client

DISTNAME=	dropbear-2025.88
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security net
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	https://matt.ucc.asn.au/dropbear/dropbear.html

# unrestrictive, mostly MIT-like, see LICENSE
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c util z

SITES=		https://matt.ucc.asn.au/dropbear/releases/

DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes

# tests need network (they use pip to populate a venv)
# some errors expected
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	security/py-cryptography

.include <bsd.port.mk>
