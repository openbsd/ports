# $OpenBSD: Makefile,v 1.25 2002/04/19 19:45:03 pvalchev Exp $

COMMENT=	"multiple virtual desktop window manager, with icons"
COMMENT-fvicons="multiple virtual desktop window manager icons"
COMMENT-fvwm2=	"multiple virtual desktop window manager, without icons"

VERSION=	2.4.7
DISTNAME=	fvwm-${VERSION}
PKGNAME=	fvwm2+fvicons-${VERSION}
FULLPKGNAME-fvicons=fvicons-${VERSION}
PKGNAME-fvwm2=	fvwm2-${VERSION}
CATEGORIES=     x11
NEED_VERSION=	1.524

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm_icons.tgz:0

HOMEPAGE=	http://www.fvwm.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	ftp://ftp.fvwm.org/pub/fvwm/version-2/
MASTER_SITES0=	http://www.fvwm.org/generated/icon_download/

LIB_DEPENDS=	gtk.1.2:gtk+-*:x11/gtk+ \
		gdk_imlib.19.:imlib-*:graphics/imlib

MULTI_PACKAGES=	-fvwm2 -fvicons
SUBPACKAGE?=

FLAVORS=	rplay debug i18n
FLAVOR?=

.if ${FLAVOR:L:Mrplay} && !${SUBPACKAGE} == "-fvicons"
LIB_DEPENDS+=	rplay.0.:rplay-*:audio/rplay
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
		 --without-gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/fvwm
	${INSTALL_DATA} ${WRKDIR}/fvwm_icons/*.xpm ${PREFIX}/share/pixmaps/fvwm/
	${INSTALL_DATA} ${WRKSRC}/sample.fvwmrc/system.fvwm2rc ${PREFIX}/share/fvwm
	
.include <bsd.port.mk>
