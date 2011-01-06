# $OpenBSD: Makefile,v 1.2 2011/01/06 04:24:25 jeremy Exp $

COMMENT =	ruby-rack HTTP server for Unix and fast clients

DISTNAME =	unicorn-3.0.1
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://unicorn.bogomips.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-rack,${MODRUBY_FLAVOR} \
		devel/ruby-kgio,${MODRUBY_FLAVOR}>=2.0.0,<2.1

CONFIGURE_STYLE = ruby gem ext

REGRESS_DEPENDS = devel/gmake \
		  devel/ruby-isolate,${MODRUBY_FLAVOR}
do-regress:
	cd ${WRKSRC} && RUBYOPT=-rubygems RUBY=${RUBY} MRI=${RUBY} \
		MAKE='gmake -e' gmake -e test

.include <bsd.port.mk>
