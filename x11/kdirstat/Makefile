# $OpenBSD: Makefile,v 1.8 2003/06/20 09:37:52 kevlo Exp $

COMMENT=	"graphical disk usage utility for KDE"

DISTNAME=	kdirstat-2.3.7
CATEGORIES=	x11

HOMEPAGE=	http://kdirstat.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/download/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	kdecore.4,DCOP,kdesu,kdeui,kio,kdefx::x11/kde/libs3

MODULES=	kde

# catch $HOME/.kde/share/config
# that meinproc creates during build.
PORTHOME=	${WRKDIR}

MAKE_ENV=	${MODKDE_CONFIGURE_ENV}
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=	2.57
MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	 ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
MODKDE_VERSION=	3.1

.include <bsd.port.mk>
