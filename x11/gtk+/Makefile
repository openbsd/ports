# $OpenBSD: Makefile,v 1.39 2000/08/27 17:36:12 brad Exp $

DISTNAME=	gtk+-1.2.8
CATEGORIES=	x11 devel
NEED_VERSION=	1.320
MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/

HOMEPAGE=	http://www.gtk.org/

LIB_DEPENDS=	intl.1::devel/gettext \
		glib.1.2::devel/glib

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@rm -f ${WRKSRC}/docs/gtk.info*
	@rm -f ${WRKSRC}/docs/gdk.info*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/gtk.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
