# $OpenBSD: Makefile,v 1.9 2005/11/15 09:21:51 wilfried Exp $

COMMENT=	"library providing routines to access Microsoft Word/Excel files"

DISTNAME=	wv2-0.2.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://wvware.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		gobject-2.0.0.0 m z

MODULES=	devel/gettext

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	glib-2.0.0.0::devel/glib2 \
		xml2::textproc/libxml \
		gsf-1::devel/libgsf,no_gnome \
		bz2::archivers/bzip2

USE_LIBTOOL= Yes
USE_GMAKE= Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-debug \
		 --enable-static \
		 --with-libiconv="${LOCALBASE}"

.include <bsd.port.mk>
