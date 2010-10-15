# $OpenBSD: Makefile,v 1.4 2010/10/15 15:36:41 jeremy Exp $

COMMENT =	simple AMQP driver for Ruby

DISTNAME =	amqp-0.6.7
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::net/ruby-eventmachine

REGRESS_DEPENDS =	::${BUILD_PKGPATH} \
			::devel/ruby-bacon 
MODRUBY_REGRESS =	rake 
RAKE_REGRESS_TARGET =	spec

.include <bsd.port.mk>
