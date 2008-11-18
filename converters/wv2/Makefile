# $OpenBSD: Makefile,v 1.22 2008/11/18 13:40:32 landry Exp $

COMMENT=	library functions to access Microsoft Word/Excel files

DISTNAME=	wv2-0.2.3
PKGNAME=	${DISTNAME}p4
SHARED_LIBS +=	wv2                  3.0      # .1.8
CATEGORIES=	converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://wvware.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	gobject-2.0 gio-2.0 gmodule-2.0 pcre m z

MODULES=	devel/gettext

LIB_DEPENDS+=	glib-2.0::devel/glib2 \
		xml2::textproc/libxml \
		gsf-1::devel/libgsf \
		bz2::archivers/bzip2

USE_LIBTOOL= Yes
USE_GMAKE= Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-debug \
		 --enable-static \
		 --with-libiconv="${LOCALBASE}"

.include <bsd.port.mk>
