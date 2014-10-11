# $OpenBSD: Makefile,v 1.24 2014/10/11 19:54:46 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-3.12.0
REVISION =	0
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

# Tests require minitest > 5.3, which isn't in ports.

.include <bsd.port.mk>
