# $OpenBSD: Makefile,v 1.2 2006/11/10 12:41:26 steven Exp $

COMMENT=	"library for importing and exporting WordPerfect(tm) documents"

DISTNAME=	libwpd-0.8.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	textproc

SHARED_LIBS=	wpd-0.8		8.7 \
		wpd-stream-0.8	8.7

HOMEPAGE=	http://libwpd.sourceforge.net/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libwpd/}

WANTLIB=	c m stdc++ z bz2 glib-2.0 gobject-2.0 iconv intl xml2

LIB_DEPENDS=	gsf-1::devel/libgsf

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
