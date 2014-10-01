# $OpenBSD: Makefile,v 1.13 2014/10/01 06:29:04 jasper Exp $

COMMENT =	sqlite3 bindings for Node.js

NPM_VERSION =	2.2.3
NPM_NAME =	sqlite3
REVISION =	0
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
