# $OpenBSD: Makefile,v 1.21 2015/06/25 18:53:07 jasper Exp $

COMMENT=		flexible HTML parser

DISTNAME=		hpricot-0.8.6
CATEGORIES=		textproc

HOMEPAGE=		http://code.whytheluckystiff.net/hpricot/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${MODRUBY_RAKE_DEPENDS}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	@cd ${WRKSRC} && ${RUBY} -rubygems -Ilib:test \
		-e "ARGV.each { |f| load f unless f =~ /^-/  }" \
		"test/test_preserved.rb" "test/test_paths.rb" \
		"test/test_xml.rb" "test/test_parser.rb" "test/test_alter.rb" \
		"test/test_builder.rb"

.include <bsd.port.mk>
