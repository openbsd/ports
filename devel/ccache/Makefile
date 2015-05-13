# $OpenBSD: Makefile,v 1.28 2015/05/13 08:19:23 sthen Exp $

COMMENT =	compiler cache

DISTNAME =	ccache-3.2.2
CATEGORIES =	devel

# The ccache(1) manual page causes ERRORs with mandoc(1),
# so normally this port would require USE_GROFF.
# However, the actual formatting issues are not very serious,
# and USE_GROFF would cause a circular dependency
# because the textproc/groff port can use ccache.
# When updating, please check that mandoc(1) still
# does not drop any content from the ccache(1) manual.

HOMEPAGE =	http://ccache.samba.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c m z

MASTER_SITES =	http://samba.org/ftp/ccache/

CONFIGURE_STYLE =	gnu

NO_CCACHE =		Yes

.include <bsd.port.mk>
