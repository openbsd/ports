# $OpenBSD: Makefile,v 1.51 2011/01/18 20:00:56 jasper Exp $

COMMENT-main=	multiple virtual desktop window manager, with icons
COMMENT-fvicons=multiple virtual desktop window manager icons
COMMENT-fvwm2=	multiple virtual desktop window manager, without icons

VERSION=	2.4.20
DISTNAME=	fvwm-${VERSION}
PKGNAME-main=	fvwm2+fvicons-${VERSION}
FULLPKGNAME-fvicons=fvicons-${VERSION}
PKGNAME-fvwm2=	fvwm2-${VERSION}

REVISION-main=	3
REVISION-fvicons= 1
REVISION-fvwm2=	2

CATEGORIES=     x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm_icons.tgz:0

HOMEPAGE=	http://www.fvwm.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL/BSD-like (badly worded)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xinerama Xpm c m readline termcap

MODULES=	devel/gettext

MASTER_SITES=	ftp://ftp.fvwm.org/pub/fvwm/version-2/
MASTER_SITES0=	http://www.fvwm.org/generated/icon_download/

MULTI_PACKAGES=	-main -fvwm2 -fvicons

FLAVORS=	rplay debug i18n
FLAVOR?=

.if ${FLAVOR:L:Mrplay}
LIB_DEPENDS+=	audio/rplay
CONFIGURE_ARGS+= --with-rplay-includes="${LOCALBASE}/include" \
		 --with-rplay-library="${LOCALBASE}/lib"
WANTLIB += rplay
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

PKG_ARCH-fvicons=	*
LIB_DEPENDS-fvicons=
WANTLIB-fvicons=
FULLPKGPATH-fvicons=	${PKGPATH},-fvicons

SUBST_VARS=	VERSION

USE_GROFF =	Yes

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-extras \
		--without-gnome \
		--disable-gtk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/fvwm
	${INSTALL_DATA} ${WRKDIR}/fvwm_icons/*.xpm ${PREFIX}/share/pixmaps/fvwm/
	${INSTALL_DATA} ${WRKSRC}/sample.fvwmrc/system.fvwm2rc ${PREFIX}/share/fvwm

.include <bsd.port.mk>
