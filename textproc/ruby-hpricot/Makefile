# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:55 jeremy Exp $

COMMENT=		flexible HTML parser

DISTNAME=		hpricot-0.8.1
REVISION=		1
CATEGORIES=		textproc

HOMEPAGE=		http://code.whytheluckystiff.net/hpricot/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${MODRUBY_RAKE_DEPENDS}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

REGRESS_DEPENDS=	:${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	@cd ${WRKSRC} && /usr/local/bin/ruby -rubygems -Ilib:test:lib \
		-e "ARGV.each { |f| load f unless f =~ /^-/  }" \
		"test/test_preserved.rb" "test/test_paths.rb" \
		"test/test_xml.rb" "test/test_parser.rb" "test/test_alter.rb" \
		"test/test_builder.rb"

.include <bsd.port.mk>
