# $OpenBSD: Makefile,v 1.10 2002/03/23 01:38:29 lebel Exp $

COMMENT=		"screen saver and locker for the X Window System"

VERSION=		4.02
DISTNAME=		xscreensaver-${VERSION}
CATEGORIES=     	x11
NEED_VERSION=		1.487

HOMEPAGE=		http://www.jwz.org/xscreensaver/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.jwz.org/xscreensaver/

NO_REGRESS=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-hackdir="${PREFIX}/libexec/xscreensaver"
CONFIGURE_ARGS+=	--with-gl
CONFIGURE_ARGS+=	--with-xpm
CONFIGURE_ARGS+=	--without-gnome
CONFIGURE_ARGS+=	--with-zippy=/usr/games/fortune
CONFIGURE_ARGS+=	--without-kerberos

FLAVORS=		gtk motif no_gle
FLAVOR?=		gtk

.if !${FLAVOR:L:Mno_gle}
LIB_DEPENDS=		gle.3::graphics/gle
CONFIGURE_ARGS+=	--with-gle
.else
CONFIGURE_ARGS+=	--without-gle
.endif

.if ${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mmotif}
CONFIGURE_ARGS+=	--with-gtk --without-motif
LIB_DEPENDS+=		gtk.1.2,gdk::x11/gtk+ xml.9::textproc/libxml1
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/gnome-xml"
CONFIGURE_ENV+=CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/gnome-xml"
.elif ${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mgtk}
CONFIGURE_ENV+= 	MOTIFHOME=${X11BASE}
CONFIGURE_ARGS+=	--with-motif --without-gtk
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"
USE_MOTIF=		any
.else
ERRORS+=		"Fatal: Please choose either the gtk or motif flavor"
.endif

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -pthread"
MAKE_ENV+=		${CONFIGURE_ENV}

.include <bsd.port.mk>
