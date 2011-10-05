# $OpenBSD: Makefile,v 1.4 2011/10/05 07:53:46 jasper Exp $

COMMENT=	ensure your Puppet manifests conform with the style guide

DISTNAME=	puppet-lint-0.1.5

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/rodjek/puppet-lint/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

RUN_DEPENDS=	sysutils/ruby-puppet

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
