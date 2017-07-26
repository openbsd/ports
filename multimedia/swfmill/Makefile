# $OpenBSD: Makefile,v 1.9 2017/07/26 22:45:27 sthen Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.3
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/
REVISION=	0

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt freetype gcrypt gpg-error lzma m png pthread ${COMPILER_LIBCXX}
WANTLIB += xml2 xslt z

MODULES=	devel/gettext
LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
