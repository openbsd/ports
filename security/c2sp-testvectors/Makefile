COMMENT=	community cryptography specification project test vectors

# No releases
VERSION=	20230723
DISTNAME=	c2sp-testvectors-${VERSION}

GH_ACCOUNT=	C2SP
GH_PROJECT=	CCTV
GH_COMMIT=	9b749e98ba92ffbf0c2504669680f22acdf19f4f

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
