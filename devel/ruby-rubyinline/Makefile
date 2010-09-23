# $OpenBSD: Makefile,v 1.5 2010/09/23 22:30:27 jeremy Exp $

COMMENT=		embed C/++ external module code in your Ruby script

DISTNAME=		RubyInline-3.8.3
PKGNAME=		ruby-${DISTNAME:L}
REVISION=		0
CATEGORIES=		devel

HOMEPAGE=		http://www.zenspider.com/ZSS/Products/RubyInline/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=rubyinline/}

MODULES=		lang/ruby

GEM_SKIPDEPENDS=	hoe

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/ruby-zentest

REGRESS_DEPENDS=	:${PKGNAME}:${BASE_PKGPATH} \
			::devel/ruby-rake

PKG_ARCH=		*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib/ ./test/test_inline.rb

.include <bsd.port.mk>
