# $OpenBSD: Makefile,v 1.7 2012/10/08 09:41:35 jasper Exp $

COMMENT=	ensure your Puppet manifests conform with the style guide

DISTNAME=	puppet-lint-0.3.1

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

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
