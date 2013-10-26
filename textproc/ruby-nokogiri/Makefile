# $OpenBSD: Makefile,v 1.19 2013/10/26 23:55:37 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.5.6
REVISION =		0
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
