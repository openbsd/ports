# $OpenBSD: Makefile,v 1.8 2017/02/25 15:06:16 jasper Exp $

COMMENT=		syntax checks for Puppet manifests and templates

DISTNAME=		puppet-syntax-2.3.0
CATEGORIES=		sysutils

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		rspec3

.include <bsd.port.mk>
