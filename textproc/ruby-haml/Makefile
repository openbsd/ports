# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:55 jeremy Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-2.2.2
REVISION=		1
CATEGORIES=		textproc

HOMEPAGE=		http://haml.hamptoncatlin.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:${MODRUBY_PKG_PREFIX}-hpricot-*:textproc/ruby-hpricot,${FLAVOR}

REGRESS_DEPENDS=	:${MODRUBY_PKG_PREFIX}-actionpack-*:devel/ruby-actionpack,${FLAVOR}

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
