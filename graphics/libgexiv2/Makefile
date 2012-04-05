# $OpenBSD: Makefile,v 1.8 2012/04/05 12:58:14 ajacoutot Exp $

COMMENT=	GObject wrapper around exiv2
CATEGORIES=	graphics
DISTNAME=	libgexiv2-0.4.1

SHARED_LIBS +=	gexiv2	1.0 # .0.0

HOMEPAGE=	http://redmine.yorba.org/projects/gexiv2/wiki

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://yorba.org/download/gexiv2/0.4/
EXTRACT_SUFX=	.tar.bz2

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix='${PREFIX}' \
		CXX='${CXX}' \
		INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
		INSTALL_DATA='${INSTALL_DATA}'

MODULES=	devel/gettext

LIB_DEPENDS =	graphics/exiv2>=0.22 \
		devel/glib2

WANTLIB += exiv2 expat ffi glib-2.0 gobject-2.0 gthread-2.0 m
WANTLIB += pcre stdc++ z

NO_REGRESS =	Yes

.include <bsd.port.mk>
