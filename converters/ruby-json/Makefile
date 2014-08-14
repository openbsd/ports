# $OpenBSD: Makefile,v 1.26 2014/08/14 07:24:29 jasper Exp $

COMMENT=		JSON implementation for Ruby

DISTNAME=		json-1.8.1
CATEGORIES=		converters

HOMEPAGE=		http://json.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=		rake
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			${MODRUBY_ICONV_DEPENDS}

do-test:
	cd ${WRKSRC} && /usr/bin/env -i ${MAKE_ENV} RUBYOPT=-rubygems \
		JSON=ext ${MODRUBY_BIN_TESTRB} tests/*.rb

.include <bsd.port.mk>
