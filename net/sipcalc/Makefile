# $OpenBSD: Makefile,v 1.1.1.1 2009/04/14 19:12:59 stsp Exp $

COMMENT = 	ipv4 and ipv6 subnet calculator

VERSION = 	1.1.4
DISTNAME = 	sipcalc-${VERSION}
CATEGORIES = 	net
HOMEPAGE = 	http://www.routemeister.net/projects/sipcalc/
MAINTAINER = 	Stefan Sperling <stsp@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP = 		Yes

MASTER_SITES = 	http://www.routemeister.net/projects/sipcalc/files/

CONFIGURE_STYLE = 	gnu
WANTLIB =		c

NO_REGRESS = 	Yes

.include <bsd.port.mk>
