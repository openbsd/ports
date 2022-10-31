COMMENT=		fast and secure postfix graylisting policy server

DISTNAME=		s-postgray-0.8.0
CATEGORIES=		mail
HOMEPAGE=		https://www.sdaoden.eu/code.html\#s-postgray

MASTER_SITES=		https://ftp.sdaoden.eu/
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=		Steffen Nurpmeso <steffen@sdaoden.eu>

# ISC
PERMIT_PACKAGE=		Yes

WANTLIB+=		c

MAKE_FILE=		makefile
MAKE_FLAGS=		MANDIR="${DESTDIR}${PREFIX}"/man/man8 \
			VAL_STORE_PATH=/tmp

# get rid of hardcoded -O2
MAKE_FLAGS+=		SUFOPT=-I./include

do-test:
	cd ${WRKBUILD} && ./s-postgray-test.sh

.include <bsd.port.mk>
