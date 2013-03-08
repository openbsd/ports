# $OpenBSD: Makefile,v 1.10 2013/03/08 10:21:21 ajacoutot Exp $

COMMENT=	ensure your Puppet manifests conform with the style guide

DISTNAME=	puppet-lint-0.3.2
REVISION=	1

CATEGORIES=	sysutils

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://puppet-lint.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
