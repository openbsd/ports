# $OpenBSD: Makefile,v 1.25 2000/10/04 05:39:18 brad Exp $

DISTNAME=	freeciv-1.11.4
CATEGORIES=	games
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.freeciv.org/pub/freeciv/stable/

HOMEPAGE=	http://www.freeciv.org/

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	gtk
FLAVOR?=

.if ${FLAVOR:L} == "gtk"
LIB_DEPENDS+=	gtk.1.2::x11/gtk+ \
		Imlib.19::graphics/imlib
.else
CONFIGURE_ARGS=	--with-xaw
.endif

.include <bsd.port.mk>
