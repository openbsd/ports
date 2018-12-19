# $OpenBSD: Makefile,v 1.8 2018/12/19 17:55:13 sthen Exp $

COMMENT =	library of general purpose APIs
BROKEN-hppa =	missing atomic ops

DISTNAME =	libowfat-0.31
EXTRACT_SUFX =	.tar.xz
REVISION =	2

SHARED_LIBS=	owfat 0.0

CATEGORIES=	devel

HOMEPAGE=	https://www.fefe.de/libowfat/

MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread

MASTER_SITES =	https://www.fefe.de/libowfat/

MAKE_FLAGS =	CC="${CC}" \
		OPT_REG="${CFLAGS}" OPT_PLUS="${CFLAGS}" \
		SO_VERSION="${LIBowfat_VERSION}"
FAKE_FLAGS =	prefix=${PREFIX} \
		INCLUDEDIR=${PREFIX}/include/lowfat \
		MAN3DIR=${PREFIX}/share/lowfat/man/man3

USE_GMAKE =	Yes

NO_TEST =	Yes

CFLAGS +=	-fpic
MAKE_FILE=	GNUmakefile

.include <bsd.port.mk>
