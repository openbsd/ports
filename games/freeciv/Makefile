# $OpenBSD: Makefile,v 1.31 2001/10/25 02:19:12 brad Exp $

COMMENT=	"Civilization clone for X11; multiplayer"

DISTNAME=	freeciv-1.12.0
CATEGORIES=	games
NEED_VERSION=	1.474
HOMEPAGE=	http://www.freeciv.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable/

FLAVORS=	gtk
FLAVOR?=

MODULES=	gettext

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=	Imlib.19,gdk_imlib::graphics/imlib
.else
CONFIGURE_ARGS=	--with-xaw
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
