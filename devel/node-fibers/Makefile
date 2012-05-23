# $OpenBSD: Makefile,v 1.6 2012/05/23 15:13:20 jasper Exp $

# Currently node itself is only for amd64 and i386, but
# the coroutine library this uses only works on amd64
# and i386, so even if other arches are supported by node
# later, this extension will only support these arches.
ONLY_FOR_ARCHS= amd64 i386

COMMENT =	fiber/coroutine support for nodejs

NPM_VERSION =	0.6.4
NPM_NAME =	fibers
CATEGORIES =	devel

REVISION =	2

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/laverdet/node-fibers

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext
USE_GMAKE =		Yes
SUBST_VARS =		CFLAGS

REGRESS_TARGET =	test

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/platform.mk

.include <bsd.port.mk>
