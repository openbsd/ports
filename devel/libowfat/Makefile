# $OpenBSD: Makefile,v 1.1.1.1 2014/11/09 19:47:41 bluhm Exp $

COMMENT =	library of general purpose APIs

DISTNAME =	libowfat-0.29
CATEGORIES =	devel

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

HOMEPAGE =	http://www.fefe.de/libowfat/
MASTER_SITES =	http://dl.fefe.de/
EXTRACT_SUFX =	.tar.bz2
USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile

FAKE_FLAGS =	prefix=${DESTDIR}${PREFIX} \
		INCLUDEDIR=${DESTDIR}${PREFIX}/include/lowfat \
		MAN3DIR=${DESTDIR}${PREFIX}/share/lowfat/man

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread
NO_TEST =	Yes

.include <bsd.port.mk>
