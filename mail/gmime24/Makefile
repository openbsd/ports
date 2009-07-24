# $OpenBSD: Makefile,v 1.1.1.1 2009/07/24 09:03:51 ajacoutot Exp $

COMMENT=	MIME messages creation and parsing library (v2.4)

V=		2.4.7
DISTNAME=	gmime-${V}

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  gmime-2.4            0.0      # .6.7

CATEGORIES=	mail devel

HOMEPAGE=	http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	pcre z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gmime/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MODULES=	devel/gettext

LIB_DEPENDS=	glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		DOLT_BASH="/bin/ksh"
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--disable-mono

.include <bsd.port.mk>
