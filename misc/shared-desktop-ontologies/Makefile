# $OpenBSD: Makefile,v 1.1.1.1 2010/06/19 19:32:27 espie Exp $

COMMENT = 		shared desktop ontologies
PKG_ARCH =		*

DISTNAME = 		shared-desktop-ontologies-0.5
EXTRACT_SUFX =		.tar.bz2

# I'd like to put it as "alien-shit", but hey, close enough
CATEGORIES = 		misc

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=oscaf/}

# both BSD and CC-BY, joy !
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/cmake

NO_REGRESS =		Yes
.include <bsd.port.mk>
