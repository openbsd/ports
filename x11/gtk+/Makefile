# $OpenBSD: Makefile,v 1.46 2001/07/09 17:11:06 pvalchev Exp $

COMMENT=	"General Toolkit for X11 GUI"

DISTNAME=	gtk+-1.2.10
CATEGORIES=	x11 devel
NEED_VERSION=	1.384
MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gtk/v1.2/ \
		http://www.ameth.org/gimp/gtk/v1.2/

HOMEPAGE=	http://www.gtk.org/

LIB_DEPENDS=	intl.1::devel/gettext \
		glib.1.2::devel/glib

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cd ${WRKSRC}/docs; rm -f gtk.info* gdk.info*

.include <bsd.port.mk>
