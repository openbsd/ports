# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:30 espie Exp $

COMMENT=		embed C/++ external module code in your Ruby script

DISTNAME=		RubyInline-3.8.3
PKGNAME=		${DISTNAME:L}
REVISION=		5
CATEGORIES=		devel

HOMEPAGE=		http://www.zenspider.com/ZSS/Products/RubyInline/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-zentest,${MODRUBY_FLAVOR} \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
			${MODRUBY_RAKE_DEPENDS}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -Ilib/ ./test/test_inline.rb

.include <bsd.port.mk>
