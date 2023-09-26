COMMENT=		fast and secure postfix graylisting policy server

DISTNAME=		s-postgray-0.8.1
CATEGORIES=		mail
HOMEPAGE=		https://www.sdaoden.eu/code.html\#s-postgray

SITES=			https://ftp.sdaoden.eu/

MAINTAINER=		Steffen Nurpmeso <steffen@sdaoden.eu>

# ISC
PERMIT_PACKAGE=		Yes

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

# uses pledge()
# uses unveil()
WANTLIB+=		c

MAKE_FILE=		makefile
MAKE_FLAGS=		MANDIR="${DESTDIR}${PREFIX}"/man/man8 \
			VAL_STORE_PATH=/tmp

# get rid of hardcoded -O2
MAKE_FLAGS+=		SUFOPT="-DNDEBUG -I./include"

do-test:
	cd ${WRKBUILD} && ./s-postgray-test.sh

.include <bsd.port.mk>
