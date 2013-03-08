# $OpenBSD: Makefile,v 1.5 2013/03/08 10:41:58 jasper Exp $

COMMENT=	Ruby-FFI-based binding to the GObjectIntrospection API

DISTNAME=	gir_ffi-0.5.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mvz/ruby-gir-ffi

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.2.0,<=1.3.0 \
		devel/ruby-indentation,${MODRUBY_FLAVOR}>=0.0.6,<0.1.0

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
