# $OpenBSD: Makefile,v 1.26 2016/11/04 21:41:54 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.6.8.1
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		exslt gcrypt gpg-error iconv xml2 xslt z
LIB_DEPENDS=		converters/libiconv \
			textproc/libxslt

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext
CONFIGURE_ARGS=		--use-system-libraries \
			--with-xml2-include=${LOCALBASE}/include/libxml2/

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=		ruby
MODRUBY_TEST_TARGET=	-I test -rnokogiri \
			-e 'ARGV.each{|f| require f}' \
			./test/test_*.rb ./test/*/test_*.rb

.include <bsd.port.mk>
