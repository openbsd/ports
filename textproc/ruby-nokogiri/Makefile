# $OpenBSD: Makefile,v 1.23 2015/07/25 23:28:23 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.6.6.2
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		exslt gcrypt gpg-error xml2 xslt z
LIB_DEPENDS=		textproc/libxslt

MODULES=		lang/ruby converters/libiconv

CONFIGURE_STYLE=	ruby gem ext
CONFIGURE_ARGS=		--use-system-libraries

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=		ruby
MODRUBY_TEST_TARGET=	-I test -rnokogiri \
			-e 'ARGV.each{|f| require f}' \
			./test/test_*.rb ./test/*/test_*.rb

.include <bsd.port.mk>
