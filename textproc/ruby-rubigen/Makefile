# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:55 jeremy Exp $

COMMENT=		generic generator framework for Ruby

DISTNAME=		rubigen-1.5.2
REVISION =      	1
CATEGORIES=		textproc

HOMEPAGE=		http://rubigen.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:${MODRUBY_PKG_PREFIX}-activesupport-*:devel/ruby-activesupport,${FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
