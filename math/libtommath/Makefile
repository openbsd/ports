# $OpenBSD: Makefile,v 1.2 2015/06/16 07:47:47 czarkoff Exp $

PORTROACH =		skipv:semver

COMMENT =		number theoretic multiple-precision integer library
V =			0.42.0
DISTNAME =		libtommath-$V
CATEGORIES =		math
HOMEPAGE =		http://libtom.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

GH_ACCOUNT =		libtom
GH_PROJECT =		libtommath
GH_TAGNAME =		v${V}

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		print/texlive/base

MAKE_FLAGS =		IGNORE_SPEED=Yes
FAKE_FLAGS =		DESTDIR=${WRKINST}${PREFIX} \
			LIBPATH=/lib \
			INCPATH=/include
USE_GMAKE =		Yes
MAKE_FILE =		makefile
WRKDIST =		${WRKDIR}/${PKGNAME}

ALL_TARGET =		default docs manual
TEST_TARGET =		mtest
TEST_IS_INTERACTIVE =	Yes

DOCPATH=${PREFIX}/share/doc/libtommath

post-test:
	@echo "\n\n\tThe test will run until interrupted (eg. by Control-C).\n"
	${WRKBUILD}/mtest/mtest | ${WRKBUILD}/test

post-install:
	${INSTALL_DATA_DIR} ${DOCPATH}
	${INSTALL_DATA} ${WRKDIST}/bn.pdf ${DOCPATH}/manual.pdf
	${INSTALL_DATA} ${WRKDIST}/tommath.pdf ${DOCPATH}/tommath.pdf

.include <bsd.port.mk>
