# $OpenBSD: Makefile,v 1.38 2006/08/04 00:10:42 espie Exp $

COMMENT=	"multiple virtual desktop window manager, with icons"
COMMENT-fvicons="multiple virtual desktop window manager icons"
COMMENT-fvwm2=	"multiple virtual desktop window manager, without icons"

VERSION=	2.4.19
DISTNAME=	fvwm-${VERSION}
PKGNAME=	fvwm2+fvicons-${VERSION}
FULLPKGNAME-fvicons=fvicons-${VERSION}
PKGNAME-fvwm2=	fvwm2-${VERSION}
CATEGORIES=     x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm_icons.tgz:0

HOMEPAGE=	http://www.fvwm.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL/BSD-like (badly worded)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		ICE SM X11 Xext Xi Xinerama Xpm c gdk glib gmodule \
			iconv intl jpeg m png readline termcap tiff ungif z

MASTER_SITES=	ftp://ftp.fvwm.org/pub/fvwm/version-2/
MASTER_SITES0=	http://www.fvwm.org/generated/icon_download/

LIB_DEPENDS=	gtk.>=1.2:gtk+-*:x11/gtk+ \
		gdk_imlib.>=19.:imlib-*:graphics/imlib

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

.if defined(PACKAGING) && ${SUBPACKAGE} == "-fvicons"
PKG_ARCH=	*
LIB_DEPENDS=
WANTLIB=
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
