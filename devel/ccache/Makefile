# $OpenBSD: Makefile,v 1.18 2011/08/22 13:24:53 sthen Exp $

COMMENT =	compiler cache

DISTNAME =	ccache-3.1.6
CATEGORIES =	devel

HOMEPAGE =	http://ccache.samba.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MASTER_SITES =	http://samba.org/ftp/ccache/

CONFIGURE_STYLE =	gnu
USE_GROFF =		Yes

NO_CCACHE =		Yes

.include <bsd.port.mk>
