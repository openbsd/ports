# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:56 espie Exp $

DISTNAME=	kdegames-1.1.2	
CATEGORIES=	x11 games
NEED_VERSION=	1.328
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.2/distribution/tar/generic/source/bz2
EXTRACT_SUFX=	.tar.bz2
DIST_SUBDIR=	kde

LIB_DEPENDS=	kdecore.1.::x11/kde/libs \
		qt.1.45::x11/qt	

MAINTAINER=		Sean Cavanaugh <seanc@cginfo.sk.ca>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=-kabalone -kasteroids -kblackbox -kmahjongg -kmines\
-konquest -kpat -kpoker -kreversi -ksame -kshisen -ksirtet -ksmiletris \
-ksnake -ksokoban

.if defined(SUBPACKAGE)
PKGNAME=${SUBPACKAGE:S/^-//}-1.1.2
.endif

.if !defined(SUBPACKAGE) || ${SUBPACKAGE}=="-kasteroids"
LIB_DEPENDS+= 		QwSpriteField.6.::x11/kde/support
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-qt-libraries=/usr/local/lib \
		--with-qt-includes=/usr/local/include/X11/qt

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

.include <bsd.port.mk>
