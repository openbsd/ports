# $OpenBSD: Makefile,v 1.24 2000/07/23 01:55:49 brad Exp $

DISTNAME=	freeciv-1.11.4
CATEGORIES=	games
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable/

HOMEPAGE=	http://www.freeciv.org/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# If USE_GTK is defined, freeciv will be built with a prettier look and
# feel:
#USE_GTK=	Yes

.if defined(USE_GTK)
FLAVOR=	gtk
.endif

FLAVORS= gtk
FLAVOR?=


CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L} == "gtk"
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		Imlib.19::graphics/imlib
CONFIGURE_ENV+=	GTK_CONFIG="${PREFIX}/bin/gtk-config"
.else
CONFIGURE_ARGS=	--with-xaw
.endif

.include <bsd.port.mk>
