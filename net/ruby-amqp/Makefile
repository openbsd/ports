# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	simple AMQP driver for Ruby

DISTNAME =	amqp-0.6.7
REVISION =	0
CATEGORIES =	net

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-eventmachine-*:net/ruby-eventmachine,${FLAVOR}

REGRESS_DEPENDS =	:${FULLPKGNAME}:${BUILD_PKGPATH} \
			:${MODRUBY_PKG_PREFIX}-bacon-*:devel/ruby-bacon,${FLAVOR} 
MODRUBY_REGRESS =	rake 
RAKE_REGRESS_TARGET =	spec

.include <bsd.port.mk>
