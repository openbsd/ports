# $OpenBSD: Makefile,v 1.10 2010/11/24 21:35:16 jeremy Exp $

COMMENT=		generic generator framework for Ruby

DISTNAME=		rubigen-1.5.2
REVISION =      	2
CATEGORIES=		textproc

HOMEPAGE=		http://rubigen.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-activesupport,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
