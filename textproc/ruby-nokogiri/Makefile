# $OpenBSD: Makefile,v 1.11 2011/03/25 16:46:53 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.4.4
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.rubyforge.org/nokogiri

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		xml2 exslt xslt
LIB_DEPENDS=		textproc/libxslt

BUILD_DEPENDS=		${MODRUBY_RAKE_DEPENDS}

MODULES=		lang/ruby converters/libiconv

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_REGRESS=	rake
REGRESS_DEPENDS =	devel/ruby-rake-compiler,${MODRUBY_FLAVOR} \
			devel/ruby-minitest,${MODRUBY_FLAVOR}>=2.0.2 \
			devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.8.0

.include <bsd.port.mk>
