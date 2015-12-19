# $OpenBSD: Makefile,v 1.11 2015/12/19 19:04:43 jasper Exp $

COMMENT=	Ruby-FFI-based binding to the GObjectIntrospection API

DISTNAME=	gir_ffi-0.8.6

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mvz/ruby-gir-ffi

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.8,<=2.0 \
		devel/ruby-indentation,${MODRUBY_FLAVOR}>=0.1.1,<0.2.0
TEST_DEPENDS=	devel/ruby-bundler,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
