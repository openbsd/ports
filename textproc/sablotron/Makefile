# $OpenBSD: Makefile,v 1.15 2003/01/19 00:50:10 avsm Exp $

COMMENT=	"fast, compact and portable XSL/XSLT processor"

V=		0.97
DISTNAME=	Sablot-${V}
PKGNAME=	sablotron-${V}
CATEGORIES=    	textproc

HOMEPAGE=	http://www.gingerall.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download-2.gingerall.cz/download/sablot/

MODULES=	iconv
LIB_DEPENDS=	expat.2::textproc/expat
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_GMAKE=	Yes
CONFIGURE_STYLE=autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/tools

CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--enable-debugger --with-expat-prefix=${LOCALBASE} \
		--with-iconv-prefix=${LOCALBASE}

.include <bsd.port.mk>
