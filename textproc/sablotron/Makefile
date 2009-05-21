# $OpenBSD: Makefile,v 1.31 2009/05/21 13:07:08 benoit Exp $

COMMENT=	fast, compact and portable XSL/XSLT processor

V=		1.0.3
DISTNAME=	Sablot-${V}
PKGNAME=	sablotron-${V}
SHARED_LIBS=	sablot	103.0	# .100.3
CATEGORIES=    	textproc

HOMEPAGE=	http://www.gingerall.org/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# MPL1.1 / GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c expat m ncurses readline stdc++

MASTER_SITES=	http://download-1.gingerall.cz/download/sablot/

MODULES=	converters/libiconv

# required to build the documentation
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.57
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autocfg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	SABLOT_GPL=1
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--enable-debugger \
		--with-iconv-prefix=${LOCALBASE} --with-readline \
		--with-html-dir=${PREFIX}/share/doc/sablotron

.include <bsd.port.mk>
