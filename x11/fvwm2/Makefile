# $OpenBSD: Makefile,v 1.6 2001/06/27 21:50:38 pvalchev Exp $

COMMENT=	"multiple virtual desktop window manager, with icons"
COMMENT-fvicons="multiple virtual desktop window manager icons"
COMMENT-fvwm2=	"multiple virtual desktop window manager, without icons"

VERSION=	2.2.5
DISTNAME=	fvwm-${VERSION}
PKGNAME=	fvwm2+fvicons-${VERSION}
PKGNAME-fvicons=fvicons-${VERSION}
PKGNAME-fvwm2=	fvwm2-${VERSION}
CATEGORIES=     x11
NEED_VERSION=	1.417

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm_icons.tgz:0

HOMEPAGE=	http://www.fvwm.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	http://www.toxiclinux.org/fvwm/
MASTER_SITES0=	http://www.toxiclinux.org/fvwm/
#MASTER_SITES=	ftp://ftp.fvwm.org/pub/fvwm/version-2/
#MASTER_SITES0=	http://www.fvwm.org/generated/icon_download/

MULTI_PACKAGES=	-fvwm2 -fvicons
SUBPACKAGE?=

FLAVORS=	rplay debug
FLAVOR?=

.if ${FLAVOR:L:Mrplay}
BUILD_DEPENDS=	rplay::audio/rplay
CONFIGURE_ARGS+= --with-rplay-includes="${LOCALBASE}/include" \
		 --with-rplay-library="${LOCALBASE}/lib"
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debug-msgs
.endif

SUBST_VARS=	VERSION

USE_X11=	Yes

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-extras

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/fvicons
	${INSTALL_DATA} ${WRKDIR}/*.xpm ${PREFIX}/fvicons/
	${INSTALL_DATA_DIR} ${PREFIX}/share/fvwm2
	${INSTALL_DATA} ${WRKSRC}/sample.fvwmrc/system.fvwm2rc ${PREFIX}/share/fvwm2
	
.include <bsd.port.mk>
