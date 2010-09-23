# $OpenBSD: Makefile,v 1.4 2010/09/23 22:30:30 jeremy Exp $

COMMENT =	extensible architecture for authentication

DISTNAME =	merb-auth-${VERSION}
REVISION =	0

RUN_DEPENDS =	:ruby-merb-auth-core->=${VERSION}:www/ruby-merb/auth-core \
		:ruby-merb-auth-more->=${VERSION}:www/ruby-merb/auth-more \
		:ruby-merb-auth-slice-password->=${VERSION}:www/ruby-merb/auth-slice-password

.include <bsd.port.mk>
