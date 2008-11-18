# $OpenBSD: Makefile,v 1.9 2008/11/18 11:41:23 jasper Exp $

COMMENT=		lightweight Jabber client library

DISTNAME=       	loudmouth-1.4.3
SHARED_LIBS +=	loudmouth-1          1.0      # .1.0
CATEGORIES=		net devel

HOMEPAGE=       	http://www.loudmouth-project.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		crypto ssl pcre

MODULES=		devel/gettext

MASTER_SITES=   	http://ftp.imendio.com/pub/imendio/loudmouth/src/
EXTRACT_SUFX=   	.tar.bz2

LIB_DEPENDS=		glib-2.0::devel/glib2 \
			idn.>=16::devel/libidn
BUILD_DEPENDS=		${REGRESS_DEPENDS}
REGRESS_DEPENDS=	::devel/check

USE_LIBTOOL=    	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-mono \
			--with-ssl=openssl \
			--with-check=${LOCALBASE}

.include <bsd.port.mk>
