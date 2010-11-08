# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	extensible architecture for authentication

DISTNAME =	merb-auth-${VERSION}
REVISION =	1

RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-merb-auth-core->=${VERSION}:www/ruby-merb/auth-core,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-auth-more->=${VERSION}:www/ruby-merb/auth-more,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-merb-auth-slice-password->=${VERSION}:www/ruby-merb/auth-slice-password,${FLAVOR}

.include <bsd.port.mk>
