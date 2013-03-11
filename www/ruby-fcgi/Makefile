# $OpenBSD: Makefile,v 1.15 2013/03/11 11:44:49 espie Exp $

COMMENT=	ruby FastCGI library

DISTNAME=	fcgi-0.8.7
REVISION =	7
CATEGORIES=	www 

# ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

FLAVORS=	ruby18
FLAVOR=		ruby18

WANTLIB=	fcgi

LIB_DEPENDS=	www/fcgi>=2.4.0

CONFIGURE_STYLE=ruby gem ext
CONFIGURE_ARGS=	--with-fcgi-include=${LOCALBASE}/include \
		--with-fcgi-lib=${LOCALBASE}/lib

.include <bsd.port.mk>
