# $OpenBSD: Makefile,v 1.3 2011/03/14 20:44:19 jeremy Exp $

COMMENT =	ruby-rack HTTP server for Unix and fast clients

DISTNAME =	unicorn-3.4.0
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
		devel/ruby-kgio,${MODRUBY_FLAVOR}>=2.2,<3.0

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
		MAKE='gmake -e' gmake -e test

.include <bsd.port.mk>
