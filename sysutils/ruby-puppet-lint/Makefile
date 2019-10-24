# $OpenBSD: Makefile,v 1.25 2019/10/24 21:10:23 sebastia Exp $

COMMENT=	ensure your Puppet manifests conform with the style guide

DISTNAME=	puppet-lint-2.4.1

CATEGORIES=	sysutils

HOMEPAGE=	http://puppet-lint.com/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

GEM_FLAGS =	--no-format-executable

.include <bsd.port.mk>
