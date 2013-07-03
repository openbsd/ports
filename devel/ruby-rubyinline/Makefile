# $OpenBSD: Makefile,v 1.14 2013/07/03 06:55:24 jasper Exp $

COMMENT=		embed C/++ external module code in your Ruby script

DISTNAME=		RubyInline-3.9.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		devel

HOMEPAGE=		http://www.zenspider.com/ZSS/Products/RubyInline/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-zentest,${MODRUBY_FLAVOR}>=4.3,<5.0

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
			${MODRUBY_RAKE_DEPENDS}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -Ilib/ ./test/test_inline.rb

.include <bsd.port.mk>
