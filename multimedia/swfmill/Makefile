# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:44 espie Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.1
REVISION=		0
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c exslt freetype gcrypt gpg-error m png stdc++ xml2 xslt z

MODULES=	devel/gettext
LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

NO_TEST=	Yes

.include <bsd.port.mk>
