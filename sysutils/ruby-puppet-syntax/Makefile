COMMENT=		syntax checks for Puppet manifests and templates

DISTNAME=		puppet-syntax-7.0.1
CATEGORIES=		sysutils

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		sysutils/ruby-openvox/8

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		rspec3

.include <bsd.port.mk>
