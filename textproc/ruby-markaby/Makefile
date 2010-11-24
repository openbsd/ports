# $OpenBSD: Makefile,v 1.11 2010/11/24 21:35:15 jeremy Exp $

COMMENT=	HTML templating language for Ruby

DISTNAME=	markaby-0.5
REVISION =	5
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
RUN_DEPENDS=	textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.1

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
