# $OpenBSD: Makefile,v 1.16 2013/10/22 19:52:52 jeremy Exp $

COMMENT=	code coverage tool for Ruby

DISTNAME=	rcov-0.9.9
REVISION=		2
CATEGORIES=	devel

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
FLAVOR ?=	ruby18
FLAVORS =	ruby18 ruby19

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
