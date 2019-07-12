# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:58 sthen Exp $

COMMENT=	Ruby-FFI-based binding to the GObjectIntrospection API

DISTNAME=	gir_ffi-0.8.6

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mvz/ruby-gir-ffi

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.8,<=2.0 \
		devel/ruby-indentation,${MODRUBY_FLAVOR}>=0.1.1,<0.2.0
TEST_DEPENDS=	devel/ruby-bundler,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
