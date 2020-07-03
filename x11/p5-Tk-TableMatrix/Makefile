# $OpenBSD: Makefile,v 1.9 2020/07/03 21:46:08 sthen Exp $

COMMENT =	create and manipulate tables

DISTNAME =	Tk-TableMatrix-1.23
REVISION =	4
CATEGORIES =	x11 devel
CPAN_AUTHOR =   CERNEY

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# custom:
# http://cpansearch.perl.org/src/CERNEY/Tk-TableMatrix-1.23/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB +=	X11 c m perl

MODULES =	cpan

RUN_DEPENDS =	x11/p5-Tk
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demos
 
TEST_IS_INTERACTIVE = X11

.include <bsd.port.mk>
