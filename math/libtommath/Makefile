# $OpenBSD: Makefile,v 1.3 2015/09/11 11:44:03 czarkoff Exp $

COMMENT =		number theoretic multiple-precision integer library
V =			0.42.0
REVISION =		0
DISTNAME =		libtommath-$V
CATEGORIES =		math
HOMEPAGE =		http://libtom.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

MASTER_SITES0 =		http://libtom.net/files/
MASTER_SITES1 =		http://spacehopper.org/mirrors/
DISTFILES +=		ltm-$V.tar.bz2:0 ltm-manual-$V.pdf.gz:1

# Public Domain
PERMIT_PACKAGE_CDROM =	Yes

MAKE_FLAGS =		IGNORE_SPEED=Yes
FAKE_FLAGS =		DESTDIR=${WRKINST}${PREFIX} \
			LIBPATH=/lib \
			INCPATH=/include
USE_GMAKE =		Yes
MAKE_FILE =		makefile
WRKDIST =		${WRKDIR}/${PKGNAME}

ALL_TARGET =		default
TEST_TARGET =		mtest
TEST_IS_INTERACTIVE =	Yes

CFLAGS +=		-fPIC

DOCPATH=${PREFIX}/share/doc/libtommath

post-test:
	@echo "\n\n\tThe test will run until interrupted (eg. by Control-C).\n"
	${WRKBUILD}/mtest/mtest | ${WRKBUILD}/test

post-install:
	${INSTALL_DATA_DIR} ${DOCPATH}
	${INSTALL_DATA} ${WRKDIR}/ltm-manual-$V.pdf ${DOCPATH}/manual.pdf

.include <bsd.port.mk>
