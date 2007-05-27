# $OpenBSD: Makefile,v 1.1.1.1 2007/05/27 19:33:15 jasper Exp $

COMMENT=		"lightweight Jabber client library"
DISTNAME=       	loudmouth-1.2.2
SHARED_LIBS +=	loudmouth-1          0.0      # .0.0
CATEGORIES=		net devel

HOMEPAGE=       	http://www.loudmouth-project.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

MODULES=		devel/gettext

MASTER_SITES=   	http://ftp.imendio.com/pub/imendio/loudmouth/src/
EXTRACT_SUFX=   	.tar.bz2

LIB_DEPENDS=		glib-2.0::devel/glib2 \
			idn.>=16::devel/libidn
REGRESS_DEPENDS=	::devel/check

USE_LIBTOOL=    	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-mono \
			--with-ssl=openssl

.include <bsd.port.mk>
