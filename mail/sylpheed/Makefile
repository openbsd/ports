# $OpenBSD: Makefile,v 1.4 2001/03/04 20:39:41 naddy Exp $

DISTNAME=	sylpheed-0.4.61
CATEGORIES=    	mail news x11
NEED_VERSION=	1.336
HOMEPAGE=	http://sylpheed.good-day.net

MAINTAINER=	Couderc Damien <couderc.damien@wanadoo.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/sylpheed/

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-gpgme
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	imlib pixbuf
FLAVOR?=	pixbuf

.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_imlib.19::graphics/imlib
CONFIGURE_ARGS+=	--disable-gdk-pixbuf
.endif
.if ${FLAVOR:L:Mpixbuf}
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_pixbuf::graphics/gdk-pixbuf
CONFIGURE_ARGS+=	--disable-imlib
.endif

.include <bsd.port.mk>
