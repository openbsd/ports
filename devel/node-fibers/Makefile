# $OpenBSD: Makefile,v 1.4 2012/05/09 06:39:04 jasper Exp $

# Currently node itself is only for amd64 and i386, but
# the coroutine library this uses only works on amd64
# and i386, so even if other arches are supported by node
# later, this extension will only support these arches.
ONLY_FOR_ARCHS= amd64 i386

COMMENT =	fiber/coroutine support for nodejs

NPM_VERSION =	0.6.4
NPM_NAME =	fibers
CATEGORIES =	devel

REVISION =	1

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/laverdet/node-fibers

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		www/node

CONFIGURE_STYLE =	npm ext
USE_GMAKE =		Yes
SUBST_VARS =		CFLAGS

pre-configure:
	${SUBST_CMD} ${WRKDIST}/src/platform.mk

.include <bsd.port.mk>
