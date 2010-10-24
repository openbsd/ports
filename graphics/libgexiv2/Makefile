# $OpenBSD: Makefile,v 1.1.1.1 2010/10/24 22:29:50 landry Exp $

COMMENT=	GObject wrapper around exiv2
CATEGORIES=	graphics
DISTNAME=	libgexiv2-0.2.1

SHARED_LIBS +=	gexiv2	0.0 # .0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

HOMEPAGE=	http://trac.yorba.org/wiki/gexiv2
MASTER_SITES=	http://yorba.org/download/gexiv2/0.2/

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

LIB_DEPENDS =	:exiv2->=0.19:graphics/exiv2 \
		::devel/glib2

WANTLIB =	expat m pcre z exiv2 glib-2.0 gthread-2.0 gobject-2.0 stdc++

NO_REGRESS =	Yes

.include <bsd.port.mk>
