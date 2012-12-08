# $OpenBSD: Makefile,v 1.9 2012/12/08 18:56:13 jasper Exp $

COMMENT=	ensure your Puppet manifests conform with the style guide

DISTNAME=	puppet-lint-0.3.2
REVISION=	0

CATEGORIES=	sysutils

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://puppet-lint.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

RUN_DEPENDS=	sysutils/ruby-puppet

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
