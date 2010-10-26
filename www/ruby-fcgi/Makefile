# $OpenBSD: Makefile,v 1.9 2010/10/26 21:34:30 jeremy Exp $

COMMENT=	ruby FastCGI library

DISTNAME=	fcgi-0.8.7
PKGNAME=	ruby-${DISTNAME}
REVISION=	3
CATEGORIES=	www 

# ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB=	fcgi

LIB_DEPENDS=	:fcgi->=2.4.0:www/fcgi

CONFIGURE_STYLE=ruby gem ext
CONFIGURE_ARGS=	--with-fcgi-include=${LOCALBASE}/include \
		--with-fcgi-lib=${LOCALBASE}/lib

.include <bsd.port.mk>
