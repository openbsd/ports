# $OpenBSD: Makefile,v 1.11 2018/04/24 15:16:47 jasper Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.6
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt freetype gcrypt gpg-error iconv intl lzma m png pthread
WANTLIB += ${COMPILER_LIBCXX} xml2 xslt z

LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
