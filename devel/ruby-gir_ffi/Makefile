# $OpenBSD: Makefile,v 1.1.1.1 2011/08/18 09:56:34 jasper Exp $

COMMENT=	Ruby-FFI-based binding to the GObjectIntrospection API

V=		0.0.10
DISTNAME=	gir_ffi-$V

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mvz/ruby-gir-ffi

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-ffi>=1.0.8

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
