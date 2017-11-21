# $OpenBSD: Makefile,v 1.10 2017/11/21 00:13:02 naddy Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.3
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/
REVISION=	1

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
