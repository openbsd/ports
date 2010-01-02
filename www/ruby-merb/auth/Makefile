# $OpenBSD: Makefile,v 1.3 2010/01/02 00:28:55 msf Exp $

COMMENT =	extensible architecture for authentication

DISTNAME =	merb-auth-${VERSION}

RUN_DEPENDS =	:ruby-merb-auth-core->=${VERSION}:www/ruby-merb/auth-core \
		:ruby-merb-auth-more->=${VERSION}:www/ruby-merb/auth-more \
		:ruby-merb-auth-slice-password->=${VERSION}:www/ruby-merb/auth-slice-password

.include <bsd.port.mk>
