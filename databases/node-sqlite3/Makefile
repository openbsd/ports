# $OpenBSD: Makefile,v 1.14 2015/02/03 15:49:42 abieber Exp $

COMMENT =	sqlite3 bindings for Node.js

NPM_VERSION =	2.2.3
NPM_NAME =	sqlite3
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/developmentseed/node-sqlite3

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

WANTLIB =	sqlite3

BUILD_DEPENDS =	${RUN_DEPENDS}

.if ${MACHINE_ARCH} == "i386"
M=		ia32
.elif ${MACHINE_ARCH} == "amd64"
M=		x64
.endif

SUBST_VARS=	M

# needs expresso and further love
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp  

.include <bsd.port.mk>
