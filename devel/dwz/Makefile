# $OpenBSD: Makefile,v 1.3 2020/03/27 13:45:25 jca Exp $

COMMENT =	DWARF optimization and duplicate removal tool
DISTNAME =	dwz-0.13
REVISION =	0

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

# XXX bootstrap: DEBUG_PACKAGES needs a dwz binary to work
post-build:
	${INSTALL_PROGRAM} ${WRKBUILD}/dwz ${WRKDIR}/bin

.include <bsd.port.mk>
