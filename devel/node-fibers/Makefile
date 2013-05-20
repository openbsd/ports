# $OpenBSD: Makefile,v 1.11 2013/05/20 19:15:06 abieber Exp $

# Currently node itself is only for amd64 and i386, but
# the coroutine library this uses only works on amd64
# and i386, so even if other arches are supported by node
# later, this extension will only support these arches.
ONLY_FOR_ARCHS= amd64 i386

COMMENT =	fiber/coroutine support for Node.js

NPM_VERSION =	0.6.8
NPM_NAME =	fibers
REVISION =	2
CATEGORIES =	devel

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/laverdet/node-fibers

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext
USE_GMAKE =		Yes
FIBERS_ARCH =		openbsd-${PKG_ARCH:S/amd64/x64/:S/i386/ia32/}
SUBST_VARS =		FIBERS_ARCH

MODNODE_DEPENDS ?= 	node-gyp
TEST_DEPENDS =	${BUILD_PKGPATH}

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp

do-test:
	cd ${WRKDIST} && node test.js

.include <bsd.port.mk>
