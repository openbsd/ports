# $OpenBSD: Makefile,v 1.9 2001/07/29 18:21:30 espie Exp $

COMMENT=	"multiple virtual desktop window manager, with icons"
COMMENT-fvicons="multiple virtual desktop window manager icons"
COMMENT-fvwm2=	"multiple virtual desktop window manager, without icons"

VERSION=	2.4.0
DISTNAME=	fvwm-${VERSION}
PKGNAME=	fvwm2+fvicons-${VERSION}
PKGNAME-fvicons=fvicons-${VERSION}
PKGNAME-fvwm2=	fvwm2-${VERSION}
CATEGORIES=     x11
NEED_VERSION=	1.419

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm_icons.tgz:0

HOMEPAGE=	http://www.fvwm.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	ftp://ftp.fvwm.org/pub/fvwm/version-2/
MASTER_SITES0=	http://www.fvwm.org/generated/icon_download/

LIB_DEPENDS=	gtk.1.2:gtk+-*:x11/gtk+

MULTI_PACKAGES=	-fvwm2 -fvicons
SUBPACKAGE?=

FLAVORS=	rplay debug i18n
FLAVOR?=

.if ${FLAVOR:L:Mrplay}
BUILD_DEPENDS=	rplay::audio/rplay
CONFIGURE_ARGS+= --with-rplay-includes="${LOCALBASE}/include" \
		 --with-rplay-library="${LOCALBASE}/lib"
.else
CONFIGURE_ARGS+= --without-rplay
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debug-msgs
.endif

.if ${FLAVOR:L:Mi18n}
# the multibyte character support is experimental
CONFIGURE_ARGS+= --enable-multibyte
.else
CONFIGURE_ARGS+= --disable-multibyte
.endif

SUBST_VARS=	VERSION

USE_X11=	Yes

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-extras \
		 --disable-gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/fvicons
	${INSTALL_DATA} ${WRKDIR}/*.xpm ${PREFIX}/fvicons/
	${INSTALL_DATA} ${WRKSRC}/sample.fvwmrc/system.fvwm2rc ${PREFIX}/share/fvwm
	
.include <bsd.port.mk>
