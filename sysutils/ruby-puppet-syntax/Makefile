# $OpenBSD: Makefile,v 1.2 2014/12/20 12:30:45 jasper Exp $

COMMENT=		syntax checks for Puppet manifests and templates

DISTNAME=		puppet-syntax-1.4.0
CATEGORIES=		sysutils

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		rspec3

.include <bsd.port.mk>
