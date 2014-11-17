# $OpenBSD: Makefile,v 1.2 2014/11/17 13:28:43 sthen Exp $

COMMENT =	library of general purpose APIs

DISTNAME =	libowfat-0.29
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

HOMEPAGE =	http://www.fefe.de/libowfat/
MASTER_SITES =	http://dl.fefe.de/
EXTRACT_SUFX =	.tar.bz2
USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile

MAKE_FLAGS =	CC="${CC}" COPTFLAGS="${CFLAGS}"
FAKE_FLAGS =	prefix=${DESTDIR}${PREFIX} \
		INCLUDEDIR=${DESTDIR}${PREFIX}/include/lowfat \
		MAN3DIR=${DESTDIR}${PREFIX}/share/lowfat/man

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread
NO_TEST =	Yes

.include <bsd.port.mk>
