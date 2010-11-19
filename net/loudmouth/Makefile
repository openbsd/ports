# $OpenBSD: Makefile,v 1.16 2010/11/19 22:31:34 espie Exp $

COMMENT=		lightweight Jabber client library

DISTNAME=       	loudmouth-1.4.3
REVISION=		2
SHARED_LIBS +=	loudmouth-1          3.0      # .1.0
CATEGORIES=		net devel

HOMEPAGE=       	http://groups.google.com/group/loudmouth-dev/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		crypto pcre ssl glib-2.0 idn>=16

MODULES=		devel/gettext

MASTER_SITES=   	${MASTER_SITE_GNOME:=sources/loudmouth/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=   	.tar.bz2

LIB_DEPENDS=		devel/glib2 \
			devel/libidn
BUILD_DEPENDS=		${REGRESS_DEPENDS}
REGRESS_DEPENDS=	devel/check

USE_LIBTOOL=    	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-mono \
			--with-check=${LOCALBASE} \
			--with-ssl=openssl

.include <bsd.port.mk>
