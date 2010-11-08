# $OpenBSD: Makefile,v 1.3 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby - prawn-core

DISTNAME =	prawn-core-${VERSION}
REVISION =      1

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-mocha-*:devel/ruby-mocha,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-test-spec-*:devel/ruby-test-spec,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-pdf-reader-*:textproc/ruby-pdf-reader,${FLAVOR}

.include <bsd.port.mk>
