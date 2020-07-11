# $OpenBSD: Makefile,v 1.61 2020/07/11 22:54:35 sthen Exp $

COMMENT =	compiler cache

V =		3.7.10
DISTNAME =	ccache-$V
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://ccache.dev/

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE =	 Yes

WANTLIB += c m z

MASTER_SITES =	https://github.com/ccache/ccache/releases/download/v$V/

CONFIGURE_STYLE =	gnu

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# This port should not have build/run dependencies.
NO_CCACHE =		Yes
DWZ =			:

# Failure in cpp1 test suire appears to be due to an embedded filename
# in a .o file present in one file, and not present in the file being
# compared with.
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -fs ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

.include <bsd.port.mk>
