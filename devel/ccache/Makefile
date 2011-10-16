# $OpenBSD: Makefile,v 1.19 2011/10/16 20:18:54 schwarze Exp $

COMMENT =	compiler cache

DISTNAME =	ccache-3.1.6
REVISION =	0
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
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MASTER_SITES =	http://samba.org/ftp/ccache/

CONFIGURE_STYLE =	gnu

NO_CCACHE =		Yes

.include <bsd.port.mk>
