COMMENT =	DWARF optimization and duplicate removal tool
DISTNAME =	dwz-0.14

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
FAKE_FLAGS =	mandir=${TRUEPREFIX}/man prefix=${TRUEPREFIX}

WRKDIST =	${WRKDIR}/dwz

# XXX bootstrap: DEBUG_PACKAGES needs a dwz binary to work

DWZ = ${WRKBUILD}/dwz

.include <bsd.port.mk>
