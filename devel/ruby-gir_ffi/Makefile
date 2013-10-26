# $OpenBSD: Makefile,v 1.8 2013/10/26 23:55:35 jeremy Exp $

COMMENT=	Ruby-FFI-based binding to the GObjectIntrospection API

DISTNAME=	gir_ffi-0.5.2
REVISION =	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mvz/ruby-gir-ffi

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.2.0,<=1.3.0 \
		devel/ruby-indentation,${MODRUBY_FLAVOR}>=0.0.6,<0.1.0

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
