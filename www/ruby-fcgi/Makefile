# $OpenBSD: Makefile,v 1.8 2010/09/28 20:12:19 jeremy Exp $

COMMENT=	ruby FastCGI library

DISTNAME=	fcgi-0.8.7
PKGNAME=	ruby-${DISTNAME}
REVISION=	2
CATEGORIES=	www 

# ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB=	c m

LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS} \
		fcgi:fcgi->=2.4.0:www/fcgi

CONFIGURE_STYLE=ruby gem
CONFIGURE_ARGS=	--with-fcgi-include=${LOCALBASE}/include \
		--with-fcgi-lib=${LOCALBASE}/lib

.include <bsd.port.mk>
