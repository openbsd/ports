# $OpenBSD: Makefile,v 1.3 2004/01/08 21:06:26 sturm Exp $

COMMENT=	"library providing routines to access Microsoft Word/Excel files"

DISTNAME=	wv2-0.2.1
CATEGORIES=	converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://wvware.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gettext gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS+=	c++

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	glib-2.0.0.0,glib-2.0.0.0::devel/glib2 \
		xml2::textproc/libxml \
		gsf-1::devel/libgsf,no_gnome

USE_GMAKE= Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-debug \
		 --enable-static \
		 --with-libiconv="${LOCALBASE}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
