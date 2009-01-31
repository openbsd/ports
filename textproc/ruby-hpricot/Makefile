# $OpenBSD: Makefile,v 1.3 2009/01/31 13:04:22 bernd Exp $

SHARED_ONLY=		Yes

COMMENT=		flexible HTML parser

VERSION=		0.6.164
DISTNAME=		hpricot-${VERSION}
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		textproc

HOMEPAGE=		http://code.whytheluckystiff.net/hpricot/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=hobix/}

WANTLIB=		c m
LIB_DEPENDS=		ruby::lang/ruby

BUILD_DEPENDS=		::devel/ruby-rake

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	::textproc/ruby-hpricot

PORTHOME=		${WRKDIR}

pre-install:
	@cd ${WRKSRC} && ${SETENV} VERSION=${VERSION} HOME=${PORTHOME} \
		${LOCALBASE}/bin/rake gem && \
		mv pkg/${DISTNAME}.gem ${WRKDIR}/${DISTNAME}.gem

REGRESS_GEM_DIR=	${LOCALBASE}/lib/ruby/gems/1.8/gems
do-regress:
	@cd ${WRKSRC} && /usr/local/bin/ruby -rubygems -Ilib:test:lib \
		-e "ARGV.each { |f| load f unless f =~ /^-/  }" \
		"test/test_preserved.rb" "test/test_paths.rb" \
		"test/test_xml.rb" "test/test_parser.rb" "test/test_alter.rb" \
		"test/test_builder.rb"

.include <bsd.port.mk>
