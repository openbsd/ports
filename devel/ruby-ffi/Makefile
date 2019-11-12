# $OpenBSD: Makefile,v 1.24 2019/11/12 06:41:34 jeremy Exp $

COMMENT =	cross-platform dynamic library loading for ruby

DISTNAME =	ffi-1.11.1
CATEGORIES =	devel

HOMEPAGE=	https://github.com/ffi/ffi

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LPGLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

WANTLIB =	ffi

LIB_DEPENDS =	devel/libffi

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
