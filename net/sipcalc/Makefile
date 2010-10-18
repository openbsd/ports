# $OpenBSD: Makefile,v 1.4 2010/10/18 18:36:58 espie Exp $

COMMENT = 	ipv4 and ipv6 subnet calculator

VERSION = 	1.1.4
DISTNAME = 	sipcalc-${VERSION}
REVISION =	0
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

USE_GROFF =	Yes
NO_REGRESS = 	Yes

.include <bsd.port.mk>
