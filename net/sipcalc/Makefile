# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:56 espie Exp $

COMMENT = 	ipv4 and ipv6 subnet calculator

VERSION = 	1.1.4
DISTNAME = 	sipcalc-${VERSION}
REVISION =	0
CATEGORIES = 	net
HOMEPAGE = 	http://www.routemeister.net/projects/sipcalc/
MAINTAINER = 	Stefan Sperling <stsp@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM = 		Yes

MASTER_SITES = 	http://www.routemeister.net/projects/sipcalc/files/

CONFIGURE_STYLE = 	gnu
WANTLIB =		c

USE_GROFF =	Yes
NO_TEST = 	Yes

.include <bsd.port.mk>
