# $OpenBSD: Makefile,v 1.5 2016/10/06 19:43:30 bluhm Exp $

COMMENT =	library of general purpose APIs
BROKEN-hppa =	missing atomic ops

DISTNAME =	libowfat-0.31
CATEGORIES =	devel

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

HOMEPAGE =	http://www.fefe.de/libowfat/
MASTER_SITES =	http://www.fefe.de/libowfat/
EXTRACT_SUFX =	.tar.xz
USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile

MAKE_FLAGS =	CC="${CC}" COPTFLAGS="${CFLAGS}"
FAKE_FLAGS =	prefix=${PREFIX} \
		INCLUDEDIR=${PREFIX}/include/lowfat \
		MAN3DIR=${PREFIX}/share/lowfat/man

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread
NO_TEST =	Yes

.include <bsd.port.mk>
