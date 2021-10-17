# $OpenBSD: Makefile,v 1.2 2021/10/17 01:43:18 bcallah Exp $

# Can't use gdc yet
ONLY_FOR_ARCHS =	amd64

COMMENT =	ancillary tools for the D programming language compiler
DISTNAME =	d${GH_PROJECT}-${GH_TAGNAME:S/^v//}
REVISION =	0
CATEGORIES =	devel

# Keep GH_TAGNAME in sync with lang/dmd
GH_ACCOUNT =	dlang
GH_PROJECT =	tools
GH_TAGNAME =	v2.098.0

HOMEPAGE =	https://dlang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

BUILD_DEPENDS =	lang/dmd

USE_GMAKE =	Yes
MAKE_FILE =	posix.mak
MAKE_FLAGS =	DMD="${LOCALBASE}/bin/dmd"

.if ${MACHINE_ARCH} == "powerpc"
# ld: error: relocation refers to a discarded section
USE_LLD =	No
.endif

FAKE_FLAGS =	INSTALL_DIR="${DESTDIR}${PREFIX}"

# Tests requires dub, during a test run dub pulls in external dependencies.
NO_TEST =	Yes

# Avoid conflict with textproc/catdoc
post-install:
	mv ${PREFIX}/bin/catdoc ${PREFIX}/bin/catdocd

.include <bsd.port.mk>
