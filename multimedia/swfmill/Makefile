# $OpenBSD: Makefile,v 1.5 2015/04/21 18:53:15 sthen Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.1
REVISION=		1
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exslt freetype gcrypt gpg-error lzma m png pthread stdc++
WANTLIB += xml2 xslt z

MODULES=	devel/gettext
LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
