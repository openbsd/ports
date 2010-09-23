# $OpenBSD: Makefile,v 1.6 2010/09/23 22:30:29 jeremy Exp $

SHARED_ONLY=		Yes

COMMENT=		flexible HTML parser

VERSION=		0.8.1
DISTNAME=		hpricot-${VERSION}
PKGNAME=		ruby-${DISTNAME}
REVISION=		0
CATEGORIES=		textproc

HOMEPAGE=		http://code.whytheluckystiff.net/hpricot/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=hobix/}

WANTLIB=		c m
LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}

BUILD_DEPENDS=		::devel/ruby-rake

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	::textproc/ruby-hpricot

do-regress:
	@cd ${WRKSRC} && /usr/local/bin/ruby -rubygems -Ilib:test:lib \
		-e "ARGV.each { |f| load f unless f =~ /^-/  }" \
		"test/test_preserved.rb" "test/test_paths.rb" \
		"test/test_xml.rb" "test/test_parser.rb" "test/test_alter.rb" \
		"test/test_builder.rb"

.include <bsd.port.mk>
