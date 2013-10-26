# $OpenBSD: Makefile,v 1.5 2013/10/26 23:55:37 jeremy Exp $

COMMENT =		builds man pages

DISTNAME =		ronn-0.7.3
REVISION =		2
CATEGORIES =		textproc

HOMEPAGE =		http://rtomayko.github.com/ronn/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_ADJ_FILES =	ronn

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv ronn.1 ${WRKINST}/${LOCALBASE}/man/man1/ronn${GEM_MAN_SUFFIX}.1 && \
		mv ronn-format.7 ${WRKINST}/${LOCALBASE}/man/man7/ronn-format${GEM_MAN_SUFFIX}.7
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-hpricot,${MODRUBY_FLAVOR}>=0.8.2 \
			textproc/ruby-mustache,${MODRUBY_FLAVOR}>=0.7.0 \
			textproc/ruby-rdiscount,${MODRUBY_FLAVOR}>=1.5.8 \
			www/ruby-sinatra,${MODRUBY_FLAVOR}

MODRUBY_TEST =	rake
MODRUBY_TEST_ENV =	RUBYOPT=-rubygems

.include <bsd.port.mk>
