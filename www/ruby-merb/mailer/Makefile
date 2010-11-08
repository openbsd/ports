# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	mailer functionality for Merb

DISTNAME =	merb-mailer-${VERSION}
REVISION =      1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-merb-core->=${VERSION}:www/ruby-merb/core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-mailfactory-*:mail/ruby-mailfactory,${FLAVOR}

.include <bsd.port.mk>
