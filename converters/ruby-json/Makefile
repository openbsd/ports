# $OpenBSD: Makefile,v 1.29 2015/07/18 21:07:40 jeremy Exp $

COMMENT=		JSON implementation for Ruby

DISTNAME=		json-1.8.3
CATEGORIES=		converters

REVISION=		0

HOMEPAGE=		http://json.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=		rake
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && /usr/bin/env -i ${MAKE_ENV} RUBYOPT=-rubygems \
		JSON=ext ${MODRUBY_BIN_TESTRB} tests/*.rb

.include <bsd.port.mk>
