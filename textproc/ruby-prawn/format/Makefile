# $OpenBSD: Makefile,v 1.3 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby - prawn-format

DISTNAME =	prawn-format-0.2.0.1
REVISION =	1

RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-prawn-core-*:textproc/ruby-prawn/core,${FLAVOR}

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-echoe-*:devel/ruby-echoe,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-prawn-*:textproc/ruby-prawn/prawn,${FLAVOR}

.include <bsd.port.mk>
