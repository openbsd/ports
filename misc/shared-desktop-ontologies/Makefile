# $OpenBSD: Makefile,v 1.4 2011/07/07 02:34:32 ajacoutot Exp $

COMMENT = 		shared desktop ontologies
PKG_ARCH =		*

DISTNAME = 		shared-desktop-ontologies-0.7.1
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://sourceforge.net/apps/trac/oscaf/

# I'd like to put it as "alien-shit", but hey, close enough
CATEGORIES = 		misc

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=oscaf/}

# both BSD and CC-BY, joy !
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DPKGCONFIG_INSTALL_DIR:STRING="lib/pkgconfig/"

NO_REGRESS =		Yes

.include <bsd.port.mk>
