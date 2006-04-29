# $OpenBSD: Makefile,v 1.2 2006/04/29 15:37:44 naddy Exp $

COMMENT=	"lightweight BitTorrent client"
COMMENT-gui=	"lightweight BitTorrent client with graphical interface"

DISTNAME=	Transmission-0.5
PKGNAME=	${DISTNAME:L}p0
PKGNAME-gui=	${DISTNAME:L:S/-/-gui-/}p0
CATEGORIES=	net
HOMEPAGE=	http://transmission.m0k.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.m0k.org/transmission/files/

PSEUDO_FLAVORS=	no_gui
FLAVOR?=

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_gui}
MULTI_PACKAGES+=-gui
.endif
SUBPACKAGE?=

WANTLIB=	c crypto m pthread
BUILD_DEPENDS=	:jam-*:devel/jam

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX}

.if ${FLAVOR:L:Mno_gui}
CONFIGURE_ARGS+=--disable-gtk
.else
CONFIGURE_ARGS+=--gettext-prefix=${LOCALBASE}
MODULES+=	devel/gettext
LIB_DEPENDS+=	gdk_pixbuf-2.0.800.0,gdk-x11-2.0.800.0,gtk-x11-2.0.800.0::x11/gtk+2
.endif

.if defined(PACKAGING)
.  if empty(SUBPACKAGE)
MODULES=
LIB_DEPENDS=
.  else
WANTLIB+=	X11 Xft Xext Xrender fontconfig freetype \
		atk-1.0.1011.0 glib-2.0.800.0 gmodule-2.0.800.0 \
		gobject-2.0.800.0 pango-1.0.1001.0 pangoft2-1.0.1001.0 \
		pangox-1.0.1001.0 pangoxft-1.0.1001.0
.  endif
.endif

do-build:
	@cd ${WRKBUILD}; ${SETENV} ${MAKE_ENV} jam

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/transmissioncli ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/transmissioncli.1 ${PREFIX}/man/man1
.if !${FLAVOR:L:Mno_gui}
	${INSTALL_PROGRAM} ${WRKBUILD}/gtk/transmission-gtk ${PREFIX}/bin
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
