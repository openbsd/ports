# $OpenBSD: Makefile,v 1.31 2000/03/12 07:08:47 brad Exp $

DISTNAME=	gtk+-1.2.7
CATEGORIES=     x11
MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/

NEED_VERSION=	1.223

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	intl:devel/gettext \
		glib.1.2:devel/glib

FAKE=		Yes

GNU_CONFIGURE=	Yes
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
