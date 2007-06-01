# $OpenBSD: Makefile,v 1.2 2007/06/01 16:29:35 jcs Exp $

COMMENT=	"ruby FastCGI library"

DISTNAME=	fcgi-0.8.7
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	www 

# ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=fcgi/}

MODULES=	lang/ruby

WANTLIB=	c fcgi m

LIB_DEPENDS=	fcgi:fcgi->=2.4.0:www/fcgi

CONFIGURE_STYLE=ruby gem
CONFIGURE_ARGS=	--with-fcgi-include=${LOCALBASE}/include \
		--with-fcgi-lib=${LOCALBASE}/lib

.include <bsd.port.mk>
