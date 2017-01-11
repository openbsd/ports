# $OpenBSD: Makefile,v 1.28 2017/01/11 20:11:29 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.7.0.1
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		exslt xml2 xslt
LIB_DEPENDS=		textproc/libxslt

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

# Work around default build forcing egcc when not necessary
CONFIGURE_ENV=		CC=cc
MAKE_ENV=		CC=cc

CONFIGURE_ARGS=		--use-system-libraries \
			--with-xml2-include=${LOCALBASE}/include/libxml2/

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=		ruby
MODRUBY_TEST_TARGET=	-I test -rnokogiri \
			-e 'ARGV.each{|f| require f}' \
			./test/test_*.rb ./test/*/test_*.rb

.include <bsd.port.mk>
