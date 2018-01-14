# $OpenBSD: Makefile,v 1.41 2018/01/14 14:30:02 sthen Exp $

COMMENT =	compiler cache

DISTNAME =	ccache-3.3.5
CATEGORIES =	devel

HOMEPAGE =	http://ccache.samba.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c m z

MASTER_SITES =	http://samba.org/ftp/ccache/

CONFIGURE_STYLE =	gnu

# This port should not have dependencies.
NO_CCACHE =		Yes

.include <bsd.port.mk>
