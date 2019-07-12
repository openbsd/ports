# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:46 sthen Exp $

COMMENT=	simplified-traditional chinese translate tool

DISTNAME=	cconv-0.6.2
REVISION=	4

CATEGORIES=	chinese converters

SHARED_LIBS=	cconv		0.0

HOMEPAGE=	https://github.com/xiaoyjy/cconv

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB= 	c iconv

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=cconv/}

LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	includedir=${PREFIX}/include/cconv/

post-patch:
	@sed -i 's:UTF-TW:UTF8-TW:g' ${WRKSRC}/main.c

.include <bsd.port.mk>
