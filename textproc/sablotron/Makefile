# $OpenBSD: Makefile,v 1.24 2006/08/03 23:55:11 espie Exp $

COMMENT=	"fast, compact and portable XSL/XSLT processor"

V=		1.0.1
DISTNAME=	Sablot-${V}
PKGNAME=	sablotron-${V}p1
SHARED_LIBS=	sablot	101.0
CATEGORIES=    	textproc

HOMEPAGE=	http://www.gingerall.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline stdc++ 

MASTER_SITES=	http://download-1.gingerall.cz/download/sablot/

MODULES=	converters/libiconv
LIB_DEPENDS=	expat.>=2::textproc/expat
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.57
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autocfg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	SABLOT_GPL=1
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--enable-debugger --with-expat-prefix=${LOCALBASE} \
		--with-iconv-prefix=${LOCALBASE} --with-readline \
		--with-html-dir=${PREFIX}/share/doc/sablotron

.include <bsd.port.mk>
