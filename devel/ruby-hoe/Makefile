# $OpenBSD: Makefile,v 1.23 2014/09/22 15:20:05 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-3.12.0
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

# Tests require minitest > 5.3, which isn't in ports.

.include <bsd.port.mk>
