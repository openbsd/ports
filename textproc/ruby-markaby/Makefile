# $OpenBSD: Makefile,v 1.8 2010/09/28 20:12:18 jeremy Exp $

COMMENT=	HTML templating language for Ruby

DISTNAME=	markaby-0.5
PKGNAME=	ruby-${DISTNAME}
REVISION =      3
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
RUN_DEPENDS=	:ruby-builder->=2.1.1:textproc/ruby-builder

PKG_ARCH=	*

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
