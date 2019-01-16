# $OpenBSD: Makefile,v 1.47 2019/01/16 10:29:40 sthen Exp $

COMMENT =	compiler cache

DISTNAME =	ccache-3.6
CATEGORIES =	devel

HOMEPAGE =	https://ccache.samba.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c m z

MASTER_SITES =	https://www.samba.org/ftp/ccache/

CONFIGURE_STYLE =	gnu

# This port should not have dependencies.
NO_CCACHE =		Yes

TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -s ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

.include <bsd.port.mk>
