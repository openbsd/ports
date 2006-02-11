# $OpenBSD: Makefile,v 1.36 2006/02/11 08:53:26 sturm Exp $

COMMENT=	"heavily customizable and extensible editor"

VERSION=	21.4.17
DISTNAME=	xemacs-${VERSION}
# see below as well
PKGNAME=	${DISTNAME}p2
CATEGORIES=	editors

HOMEPAGE=	http://www.xemacs.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses util

MASTER_SITES= 	ftp://ftp.xemacs.org/pub/xemacs/xemacs-21.4/ \
		ftp://ftp.oleane.net/pub/xemacs/xemacs-21.4/ \
		ftp://ftp.pasteur.fr/pub/computing/xemacs/xemacs-21.4/ \
		ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/ftp.xemacs.org/xemacs/xemacs-21.4/ \
      		ftp://ftp.funet.fi/pub/mirrors/ftp.xemacs.org/pub/tux/xemacs/xemacs-21.4/

GCCARCH=        ${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS=	GCCARCH VERSION

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf old dest no-autoheader

CONFIGURE_ARGS+=--infodir='$${DESTDIR}${PREFIX}/info/${DISTNAME}' \
		--infopath='${LOCALBASE}/info/${DISTNAME}:${LOCALBASE}/info:/usr/share/info' \
		--site-prefixes='${LOCALBASE}:/usr' \
		--without-ldap \
		--without-postgresql \
		--without-cde \
		--without-offix \
		--without-dragndrop \
		--without-gpm \
		--with-msw=no \
		--without-tooltalk \
		--with-sound=no \
		--with-xface=no \
		--without-wnn6 \
		--without-gtk \
		--without-gnome \
		--with-database=no \
		--with-file-coding=yes \
		--with-system-malloc \
		--pdump \
		${GCCARCH}

FAKE_FLAGS=	prefix='$${WRKINST}$${DESTDIR}${PREFIX}' \
		infodir='$${WRKINST}$${DESTDIR}${PREFIX}/info/${DISTNAME}'

FLAVORS=	mule canna wnn no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--without-x11
.else
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xau Xaw Xext Xmu Xpm Xt z

CONFIGURE_ARGS+=--with-menubars=lucid \
		--with-scrollbars=lucid \
		--with-dialogs=athena \
		--with-widgets=athena \
		--with-jpeg \
		--with-png \
		--with-tiff \
		--site-includes="${LOCALBASE}/include/libpng"

LIB_DEPENDS+=	jpeg.62::graphics/jpeg \
		png.2.::graphics/png \
		tiff.35::graphics/tiff

. if ${FLAVOR:L:Mmule}
CONFIGURE_ARGS+=--with-xim=xlib
. endif
.endif

.if ${FLAVOR:L:Mmule}
PKGNAME=	${DISTNAME}p3
MODULES=	devel/gettext
CONFIGURE_ARGS+=--with-mule

. if ${FLAVOR:L:Mcanna}
LIB_DEPENDS+=	canna.1,RKC.1::japanese/canna
CONFIGURE_ARGS+=--with-canna
. else
CONFIGURE_ARGS+=--with-canna=no
. endif

. if ${FLAVOR:L:Mwnn}
BUILD_DEPENDS+= ::japanese/Wnn
CONFIGURE_ARGS+=--with-wnn
. else
CONFIGURE_ARGS+=--with-wnn=no
. endif

.else

. if ${FLAVOR:L:Mcanna} || ${FLAVOR:L:Mwnn}
ERRORS+= "Fatal: You cannot use MULE-dependant flavors without MULE support"
. endif

CONFIGURE_ARGS+=--with-mule=no \
		--with-canna=no \
		--with-wnn=no
.endif

post-install:
	@rm -f ${PREFIX}/lib/xemacs-${VERSION}/lisp/*`hostname`.*
	@touch ${PREFIX}/lib/xemacs-${VERSION}/lisp/mule/mule-x-init.elc

.include <bsd.port.mk>
