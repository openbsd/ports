# $OpenBSD: Makefile,v 1.4 2010/11/20 19:56:52 espie Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby - prawn-format

DISTNAME =	prawn-format-0.2.0.1
REVISION =	1

RUN_DEPENDS =		textproc/ruby-prawn/core,${FLAVOR}

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	devel/ruby-echoe,${FLAVOR} \
			textproc/ruby-prawn/prawn,${FLAVOR}

.include <bsd.port.mk>
