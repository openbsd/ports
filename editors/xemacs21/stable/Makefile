# $OpenBSD: Makefile,v 1.32 2014/07/16 14:35:38 naddy Exp $

BRANCH=		21.4
VERSION=	22
REVISION=	10

WANTLIB=	c m ncurses util

CFLAGS +=	-fno-pie
CONFIGURE_ENV =	LDFLAGS="-nopie"
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

USE_GROFF =	Yes
FAKE_FLAGS=	prefix='$${WRKINST}$${DESTDIR}${PREFIX}' \
		infodir='$${WRKINST}$${DESTDIR}${PREFIX}/info/${DISTNAME}'

FLAVORS=	mule canna wnn no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=--without-x11
.else
WANTLIB+=	ICE SM X11 Xau Xaw Xext Xmu Xpm Xt z

CONFIGURE_ARGS+=--with-menubars=lucid \
		--with-scrollbars=lucid \
		--with-dialogs=athena \
		--with-widgets=athena \
		--with-jpeg \
		--with-png \
		--with-tiff

LIB_DEPENDS+=	graphics/jpeg \
		graphics/png \
		graphics/tiff
WANTLIB +=	jpeg>=62 png>=2 tiff>=35

. if ${FLAVOR:Mmule}
CONFIGURE_ARGS+=--with-xim=xlib
. endif
.endif

.if ${FLAVOR:Mmule}
MODULES=	devel/gettext
CONFIGURE_ARGS+=--with-mule

. if ${FLAVOR:Mcanna}
LIB_DEPENDS+=	japanese/canna
CONFIGURE_ARGS+=--with-canna
WANTLIB +=	canna>=1 RKC>=1
. else
CONFIGURE_ARGS+=--with-canna=no
. endif

. if ${FLAVOR:Mwnn}
BUILD_DEPENDS+= japanese/Wnn
CONFIGURE_ARGS+=--with-wnn
. else
CONFIGURE_ARGS+=--with-wnn=no
. endif

.else

. if ${FLAVOR:Mcanna} || ${FLAVOR:Mwnn}
ERRORS+= "Fatal: You cannot use MULE-dependant flavors without MULE support"
. endif

CONFIGURE_ARGS+=--with-mule=no \
		--with-canna=no \
		--with-wnn=no
.endif

.include <bsd.port.mk>
