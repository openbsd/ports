# $OpenBSD: Makefile,v 1.1.1.1 2010/12/09 20:07:41 jeremy Exp $

COMMENT =	ruby-unicorn for sleepy apps and slow clients

DISTNAME =	rainbows-2.0.1
CATEGORIES =	www

HOMEPAGE =	http://rainbows.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-unicorn,${MODRUBY_FLAVOR}>=3.0.0,<3.1 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.1.0,<2.0

CONFIGURE_STYLE = ruby gem ext

# Regress fails for various different reasons,
# many of which are due to nonportable test code
REGRESS_DEPENDS = devel/gmake \
		devel/ruby-isolate,${MODRUBY_FLAVOR}>=3.0.0,<3.1 \
		net/socat \
		net/curl

do-regress:
	cd ${WRKSRC} && RUBYLIB=$$(dirname `${GEM} which rack`) \
		RUBY=${RUBY} MRI=${RUBY} MAKE="gmake -e" gmake -e test

.include <bsd.port.mk>
