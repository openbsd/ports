# $OpenBSD: Makefile,v 1.16 2003/06/29 23:14:35 avsm Exp $

COMMENT=	"fast, compact and portable XSL/XSLT processor"

V=		0.98
DISTNAME=	Sablot-${V}
PKGNAME=	sablotron-${V}
CATEGORIES=    	textproc

HOMEPAGE=	http://www.gingerall.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download-2.gingerall.cz/download/sablot/

MODULES=	iconv
LIB_DEPENDS=	expat.2::textproc/expat
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.57
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/tools

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	SABLOT_GPL=1
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--enable-debugger --with-expat-prefix=${LOCALBASE} \
		--with-iconv-prefix=${LOCALBASE} --with-readline \
		--with-html-dir=${PREFIX}/share/doc/sablotron

.include <bsd.port.mk>
