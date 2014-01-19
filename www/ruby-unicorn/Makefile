# $OpenBSD: Makefile,v 1.16 2014/01/19 20:43:55 jeremy Exp $

COMMENT =	ruby-rack HTTP server for Unix and fast clients

DISTNAME =	unicorn-4.8.0
CATEGORIES =	www

HOMEPAGE =	http://unicorn.bogomips.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-kgio,${MODRUBY_FLAVOR}>=2.6,<3.0 \
		www/ruby-rack,${MODRUBY_FLAVOR} \
		www/ruby-raindrops,${MODRUBY_FLAVOR}>=0.7,<1.0

CONFIGURE_STYLE = ruby gem ext

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man/man1 && \
		mv unicorn.1 ${WRKINST}/${LOCALBASE}/man/man1/unicorn${GEM_MAN_SUFFIX}.1 && \
		mv unicorn_rails.1 ${WRKINST}/${LOCALBASE}/man/man1/unicorn_rails${GEM_MAN_SUFFIX}.1
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

TEST_DEPENDS = devel/gmake \
		  devel/ruby-isolate,${MODRUBY_FLAVOR}
do-test:
	cd ${WRKSRC} && RUBYOPT=-rubygems RUBY=${RUBY} MRI=${RUBY} \
		MAKE='gmake -ek' gmake -ek test

.include <bsd.port.mk>
