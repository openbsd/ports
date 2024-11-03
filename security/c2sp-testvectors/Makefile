COMMENT=	community cryptography specification project test vectors

# No releases
VERSION=	20241027
DISTNAME=	c2sp-testvectors-${VERSION}

GH_ACCOUNT=	C2SP
GH_PROJECT=	CCTV
GH_COMMIT=	da3aa2e208ccb09b57a393b2c11a0e92492093b4

CATEGORIES=	security

MAINTAINER=	Theo Buehler <tb@openbsd.org>

# new BSD
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

C2SP_DIR=	${PREFIX}/share/c2sp-testvectors/

do-install:
	${INSTALL_DATA_DIR} ${C2SP_DIR}
	cd ${WRKSRC} && pax -rw * ${C2SP_DIR}

.include <bsd.port.mk>
