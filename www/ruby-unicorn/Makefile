# $OpenBSD: Makefile,v 1.24 2019/03/08 16:25:11 jeremy Exp $

COMMENT =	ruby-rack HTTP server for Unix and fast clients

DISTNAME =	unicorn-5.5.0
CATEGORIES =	www

PATCHFILES =	unicorn_rails-5.5.0.patch{?id=6836d0674efdb1a6b79953285f10d8edd7e20432}:0
PATCH_DIST_STRIP =	-p1

HOMEPAGE =	https://bogomips.org/unicorn/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES0 =	https://bogomips.org/unicorn.git/patch/

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-kgio,${MODRUBY_FLAVOR}>=2.6,<3.0 \
		www/ruby-raindrops,${MODRUBY_FLAVOR}>=0.7,<1.0

CONFIGURE_STYLE = ruby gem ext

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man/man1 && \
		mv unicorn.1 ${WRKINST}/${LOCALBASE}/man/man1/unicorn${GEM_MAN_SUFFIX}.1 && \
		mv unicorn_rails.1 ${WRKINST}/${LOCALBASE}/man/man1/unicorn_rails${GEM_MAN_SUFFIX}.1
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

TEST_DEPENDS =	devel/gmake \
		devel/ruby-isolate,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}

do-test:
	cd ${WRKSRC} && RUBY=${RUBY} MRI=${RUBY} \
		MAKE='gmake -ek' gmake -ek check

.include <bsd.port.mk>
