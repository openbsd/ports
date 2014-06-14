# $OpenBSD: Makefile,v 1.5 2014/06/14 23:26:03 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	create and manipulate tables

DISTNAME =	Tk-TableMatrix-1.23
REVISION =	2
CATEGORIES =	x11 devel
CPAN_AUTHOR =   CERNEY

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# custom:
# http://cpansearch.perl.org/src/CERNEY/Tk-TableMatrix-1.23/COPYING
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB +=	X11 c m

MODULES =	cpan

RUN_DEPENDS =	x11/p5-Tk
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demos
 
TEST_IS_INTERACTIVE = X11

.include <bsd.port.mk>
