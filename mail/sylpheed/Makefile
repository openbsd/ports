# $OpenBSD: Makefile,v 1.11 2001/07/30 17:49:05 espie Exp $

COMMENT=	"mail/news client in gtk+"

DISTNAME=	sylpheed-0.5.1
CATEGORIES=    	mail news x11
NEED_VERSION=	1.427
HOMEPAGE=	http://sylpheed.good-day.net

MAINTAINER=	Damien Couderc <couderc.damien@wanadoo.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/sylpheed/

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-glibtest
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	imlib pixbuf gpgme
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

.if ${FLAVOR:L:Mgpgme}
LIB_DEPENDS=	gpgme::security/gpgme
CONFIGURE_ARGS+= --enable-gpgme
.else
CONFIGURE_ARGS+= --disable-gpgme
.endif

.include <bsd.port.mk>
