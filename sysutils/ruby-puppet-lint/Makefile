# $OpenBSD: Makefile,v 1.26 2019/11/07 07:43:14 sebastia Exp $

COMMENT=	ensure your Puppet manifests conform with the style guide

DISTNAME=	puppet-lint-2.4.2

CATEGORIES=	sysutils

HOMEPAGE=	http://puppet-lint.com/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

GEM_FLAGS =	--no-format-executable

.include <bsd.port.mk>
