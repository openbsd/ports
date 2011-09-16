# $OpenBSD: Makefile,v 1.2 2011/09/16 10:31:24 espie Exp $

COMMENT=	xml2swf and swf2xml processor with import functionalities

DISTNAME=	swfmill-0.3.1
REVISION=		0
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/

HOMEPAGE=	http://swfmill.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c exslt freetype gcrypt gpg-error m png stdc++ xml2 xslt z

MODULES=	devel/gettext
LIB_DEPENDS=	graphics/png \
		textproc/libxslt

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
