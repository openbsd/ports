# $OpenBSD: Makefile,v 1.40 2017/11/04 19:54:07 sthen Exp $

COMMENT =	compiler cache

DISTNAME =	ccache-3.3.4
REVISION =	0
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
