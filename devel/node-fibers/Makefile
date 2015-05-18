# $OpenBSD: Makefile,v 1.18 2015/05/18 06:56:04 jasper Exp $

# Currently node itself is only for amd64 and i386, but
# the coroutine library this uses only works on amd64
# and i386, so even if other arches are supported by node
# later, this extension will only support these arches.
ONLY_FOR_ARCHS= amd64 i386

COMMENT =	fiber/coroutine support for Node.js

NPM_VERSION =	1.0.1
REVISION =	2
NPM_NAME =	fibers
CATEGORIES =	devel

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
	rm -r ${WRKSRC}/bin/{darwin-*,linux-*,win32-*}

# Failing tests/stack-overflow2.js is known issue, see
# https://github.com/laverdet/node-fibers/issues/108
do-test:
	cd ${WRKDIST} && node test.js

.include <bsd.port.mk>
