# $OpenBSD: Makefile,v 1.10 2017/05/09 20:58:53 sebastia Exp $

COMMENT=		syntax checks for Puppet manifests and templates

DISTNAME=		puppet-syntax-2.4.0
CATEGORIES=		sysutils

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		rspec3

.include <bsd.port.mk>
