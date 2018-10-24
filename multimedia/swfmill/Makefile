# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:08 sthen Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.6
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/
REVISION=	0

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt freetype gcrypt gpg-error iconv intl lzma m png pthread
WANTLIB += ${COMPILER_LIBCXX} xml2 xslt z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
