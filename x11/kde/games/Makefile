DISTNAME=		kdegames-1.1.2	
CATEGORIES=     	x11 games
NEED_VERSION=		1.270

MAINTAINER=		seanc@cginfo.sk.ca	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_KDE}	
MASTER_SITE_SUBDIR=	stable/1.1.2/distribution/tar/generic/source/bz2

MULTI_PACKAGES=-kabalone -kasteroids -kblackbox -kmahjongg -kmines\
-konquest -kpat -kpoker -kreversi -ksame -kshisen -ksirtet -ksmiletris \
-ksnake -ksokoban

.if defined(SUBPACKAGE)
PKGNAME=${SUBPACKAGE:S/^-//}-1.1.2
.endif

LIB_DEPENDS=		kdecore.1.::x11/kde/libs \
			qt.1.45::x11/qt	

.if !defined(SUBPACKAGE) || ${SUBPACKAGE}=="-kasteroids"
LIB_DEPENDS+= 		QwSpriteField.6.::x11/kde/support
.endif

FAKE=			Yes
USE_BZIP2=		Yes
USE_GMAKE=		Yes
GNU_CONFIGURE=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
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
