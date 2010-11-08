# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:55 jeremy Exp $

COMMENT=	HTML templating language for Ruby

DISTNAME=	markaby-0.5
REVISION =      4
CATEGORIES=	textproc devel

HOMEPAGE=	http://code.whytheluckystiff.net/markaby/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:${MODRUBY_PKG_PREFIX}-builder->=2.1.1:textproc/ruby-builder,${FLAVOR}

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
