# $OpenBSD: Makefile,v 1.2 2011/09/16 12:29:16 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	create and manipulate tables

DISTNAME =	Tk-TableMatrix-1.23
REVISION=	0
CATEGORIES =	x11 devel
CPAN_AUTHOR =   CERNEY

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# custom:
# http://cpansearch.perl.org/src/CERNEY/Tk-TableMatrix-1.23/COPYING
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB +=	X11 m

MODULES =	cpan

RUN_DEPENDS =	x11/p5-Tk
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demos
 
REGRESS_IS_INTERACTIVE = X11

.include <bsd.port.mk>
