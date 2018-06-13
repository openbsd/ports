# $OpenBSD: Makefile,v 1.31 2018/06/13 22:26:52 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.8.1
REVISION =		0
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		exslt xml2 xslt gcrypt gpg-error
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
