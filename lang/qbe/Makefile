# Probably builds on all archs, but only generates assembly for these three
ONLY_FOR_ARCHS =	amd64 arm64 riscv64

COMMENT =	small, quick compiler backend
DISTNAME =	qbe-0.0.0
PKGNAME =	${DISTNAME}pl20220411
CATEGORIES =	lang devel

# No releases yet, so I set up a mirror for easy package maintenance
GH_ACCOUNT =	ibara
GH_PROJECT =	qbe
GH_TAGNAME =	2caa26e388b1c904d2f12fb09f84df7e761d8331

HOMEPAGE =	https://c9x.me/compile/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =	Yes
ALL_TARGET =	obj/qbe
MAKE_FLAGS =	V=

FAKE_FLAGS =	DESTDIR=

TEST_TARGET =	check

# Install documentation
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qbe
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/qbe

.include <bsd.port.mk>
