# $OpenBSD: Makefile,v 1.9 2017/02/27 19:40:20 jasper Exp $

COMMENT=		syntax checks for Puppet manifests and templates

DISTNAME=		puppet-syntax-2.3.0
REVISION=		0
CATEGORIES=		sysutils

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		rspec3

.include <bsd.port.mk>
