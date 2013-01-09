# $OpenBSD: Makefile,v 1.10 2013/01/09 17:38:52 jeremy Exp $

COMMENT =	ruby-rack HTTP server for Unix and fast clients

DISTNAME =	unicorn-4.4.0
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
RUN_DEPENDS =	devel/ruby-kgio,${MODRUBY_FLAVOR}>=2.4,<3.0 \
		www/ruby-rack,${MODRUBY_FLAVOR} \
		www/ruby-raindrops,${MODRUBY_FLAVOR}>=0.6,<1.0

CONFIGURE_STYLE = ruby gem ext

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man/man1 && \
		mv unicorn.1 ${WRKINST}/${LOCALBASE}/man/man1/unicorn${GEM_MAN_SUFFIX}.1 && \
		mv unicorn_rails.1 ${WRKINST}/${LOCALBASE}/man/man1/unicorn_rails${GEM_MAN_SUFFIX}.1
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

REGRESS_DEPENDS = devel/gmake \
		  devel/ruby-isolate,${MODRUBY_FLAVOR}
do-regress:
	cd ${WRKSRC} && RUBYOPT=-rubygems RUBY=${RUBY} MRI=${RUBY} \
		MAKE='gmake -ek' gmake -ek test

.include <bsd.port.mk>
