# $OpenBSD: Makefile,v 1.20 2014/01/11 22:51:03 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.5.6
REVISION =		1
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.rubyforge.org/nokogiri

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		xml2 exslt xslt z
LIB_DEPENDS=		textproc/libxslt

BUILD_DEPENDS=		${MODRUBY_RAKE_DEPENDS}

MODULES=		lang/ruby converters/libiconv

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS =	devel/ruby-rake-compiler,${MODRUBY_FLAVOR}>=0.7.9 \
			devel/ruby-minitest,${MODRUBY_FLAVOR}>=2.2.2 \
			devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.8.0 \
			devel/ruby-rdoc,${MODRUBY_FLAVOR}>=3.0.0

.include <bsd.port.mk>
