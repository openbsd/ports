# $OpenBSD: Makefile,v 1.17 2013/10/26 23:55:38 jeremy Exp $

COMMENT=	ruby FastCGI library

DISTNAME=	fcgi-0.9.1
REVISION =	0
CATEGORIES=	www

# ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB=	fcgi

LIB_DEPENDS=	www/fcgi>=2.4.0

CONFIGURE_STYLE=ruby gem ext
CONFIGURE_ARGS=	--with-fcgi-include=${LOCALBASE}/include \
		--with-fcgi-lib=${LOCALBASE}/lib

pre-build:
	mkdir -p ${GEM_BASE}/build_info

.include <bsd.port.mk>
