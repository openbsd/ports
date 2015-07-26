# $OpenBSD: Makefile,v 1.10 2015/07/26 03:37:00 jeremy Exp $

COMMENT=	Ruby-FFI-based binding to the GObjectIntrospection API

DISTNAME=	gir_ffi-0.7.9

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mvz/ruby-gir-ffi

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.8,<=2.0 \
		devel/ruby-indentation,${MODRUBY_FLAVOR}>=0.1.1,<0.2.0

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
