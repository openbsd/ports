# $OpenBSD: Makefile,v 1.9 2010/11/24 21:35:14 jeremy Exp $

COMMENT=		embed C/++ external module code in your Ruby script

DISTNAME=		RubyInline-3.8.3
PKGNAME=		${DISTNAME:L}
REVISION=		2
CATEGORIES=		devel

HOMEPAGE=		http://www.zenspider.com/ZSS/Products/RubyInline/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-zentest,${MODRUBY_FLAVOR} \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
			${MODRUBY_RAKE_DEPENDS}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib/ ./test/test_inline.rb

.include <bsd.port.mk>
