# $OpenBSD: Makefile,v 1.1.1.1 2008/04/19 18:43:02 bernd Exp $

COMMENT=	extracts the parse tree for an entire class or a method

DISTNAME=	ParseTree-2.1.1
PKGNAME=	ruby-${DISTNAME:L}
CATEGORIES=	devel

HOMEPAGE=	http://www.zenspider.com/ZSS/Products/ParseTree/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=parsetree/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:ruby-rubyinline->=3.6.0:devel/ruby-rubyinline

GEM_SKIPDEPENDS=	hoe

PKG_ARCH=		*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib test/test_all.rb

.include <bsd.port.mk>
