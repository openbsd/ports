# $OpenBSD: Makefile,v 1.10 2016/04/09 20:14:48 naddy Exp $

COMMENT=	simplified-traditional chinese translate tool

DISTNAME=	cconv-0.6.2
REVISION=	4

CATEGORIES=	chinese converters

SHARED_LIBS=	cconv		0.0

HOMEPAGE=	https://github.com/xiaoyjy/cconv

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB= 	c iconv

MASTER_SITES=	https://cconv.googlecode.com/files/

LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	includedir=${PREFIX}/include/cconv/

post-patch:
	@sed -i 's:UTF-TW:UTF8-TW:g' ${WRKSRC}/main.c

.include <bsd.port.mk>
