# requires efi(4)
ONLY_FOR_ARCHS =	amd64 arm64

# The project is Linux-oriented, using fork with BSD-specific changes so that
# patches are manageable and can be potentially sent upstream.
#
# The fork also uses unreleased changes as some of them fix build on systems
# that don't use glibc.
DISTNAME =		efivar-38
GH_ACCOUNT =		3mdeb
GH_PROJECT =		efivar
GH_TAGNAME =		bsd-v1
REVISION =		0

COMMENT =		tools and libraries to work with EFI

SHARED_LIBS +=		efivar		0.0
SHARED_LIBS +=		efiboot		0.0
SHARED_LIBS +=		efisec		0.0

CATEGORIES =		sysutils
HOMEPAGE =		https://github.com/3mdeb/efivar/blob/bsd/BSD_PORTING.md

MAINTAINER =		Sergii Dmytruk <sergii.dmytruk@3mdeb.com>

# LGPL v2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		Yes
MAKE_FLAGS =		CC=${CC}
MAKE_ENV =		LIBefivar_VERSION=${LIBefivar_VERSION} \
			LIBefiboot_VERSION=${LIBefiboot_VERSION} \
			LIBefisec_VERSION=${LIBefisec_VERSION}
FAKE_FLAGS =		PREFIX=${PREFIX} \
			MANDIR=${PREFIX}/man \
			LIBDIR=${PREFIX}/lib

# Packages can't be built with -march=native.
MAKE_FLAGS +=		HOST_MARCH=''

.include <bsd.port.mk>
