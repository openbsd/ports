# $OpenBSD: Makefile,v 1.28 2019/07/12 20:48:31 sthen Exp $

COMMENT=		lightweight Jabber client library

V=			1.4.3
DISTNAME=       	loudmouth-$V
REVISION=		7
SHARED_LIBS +=	loudmouth-1          3.0      # .1.0
CATEGORIES=		net devel

HOMEPAGE=       	http://groups.google.com/group/loudmouth-dev/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  crypto glib-2.0 iconv idn>=16 intl pcre pthread ssl

MASTER_SITES=   	${MASTER_SITE_GNOME:=sources/loudmouth/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=   	.tar.bz2

LIB_DEPENDS=		devel/glib2 \
			devel/libidn
BUILD_DEPENDS=		${TEST_DEPENDS}
TEST_DEPENDS=	devel/check

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-mono \
			--with-check=${LOCALBASE} \
			--with-ssl=openssl

.include <bsd.port.mk>
