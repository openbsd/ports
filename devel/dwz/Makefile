# $OpenBSD: Makefile,v 1.1.1.1 2020/03/23 18:22:59 bcallah Exp $

COMMENT =	DWARF optimization and duplicate removal tool
DISTNAME =	dwz-0.13
CATEGORIES =	devel

HOMEPAGE =	https://sourceware.org/dwz/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c elf

MASTER_SITES =	https://sourceware.org/ftp/dwz/releases/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =	dwz

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/dwz

.include <bsd.port.mk>
