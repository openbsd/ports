# $OpenBSD: Makefile,v 1.2 2001/07/18 10:59:01 naddy Exp $

COMMENT=		"screen saver and locker for the X Window System"

VERSION=		3.33
DISTNAME=		xscreensaver-${VERSION}
CATEGORIES=     	x11
NEED_VERSION=		1.422

HOMEPAGE=		http://www.jwz.org/xscreensaver/

MAINTAINER=		David Lebel <lebel@openbsd.org>

LIB_DEPENDS=		gle.3::graphics/gle

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.jwz.org/xscreensaver/

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-subdir="${PREFIX}/libexec/xscreensaver"
CONFIGURE_ARGS+=	--with-gle
CONFIGURE_ARGS+=	--with-gl
CONFIGURE_ARGS+=	--with-xpm
CONFIGURE_ARGS+=	--with-zippy=/usr/games/fortune
CONFIGURE_ARGS+=	--without-kerberos
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

FLAVORS=		gtk motif
FLAVOR?=		gtk

.if ${FLAVOR:L} == "gtk"
CONFIGURE_ARGS+=	--with-gtk --without-motif
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
.elif ${FLAVOR:L} == "motif"
CONFIGURE_ENV+= 	MOTIFHOME=${X11BASE}
CONFIGURE_ARGS+=	--with-motif --without-gtk
USE_MOTIF=		any
.else
ERRORS+=		"Fatal: Please choose either the gtk or motif flavor"
.endif

.include <bsd.port.mk>
