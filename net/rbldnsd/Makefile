COMMENT=	small daemon for DNSBLs

DISTNAME=	rbldnsd-0.998.20210120
GH_ACCOUNT=	spamhaus
GH_PROJECT=	rbldnsd
GH_COMMIT=	6a5daeec405c6aac24cd6ff865adb6b9666cdce6

CATEGORIES=	net

HOMEPAGE=	https://rbldnsd.io
MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c z

CONFIGURE_STYLE=simple
USE_GMAKE=	Yes
RBLDNSD_BASE=	${LOCALSTATEDIR}/rbldnsd
SUBST_VARS=	RBLDNSD_BASE

# program is written in C; this is just for tests
MODULES=	lang/python
MODPY_RUNDEP=	no
TEST_TARGET=	check
TEST_DEPENDS=	net/py-dns
TEST_FLAGS=	PYTHON=${MODPY_BIN}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rbldnsd ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/rbldnsd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
