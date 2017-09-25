# $OpenBSD: Makefile,v 1.39 2017/09/25 19:55:19 sthen Exp $

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

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

NO_CCACHE =		Yes

.include <bsd.port.mk>
