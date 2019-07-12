# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:15 sthen Exp $

COMMENT =		logic-free template language

DISTNAME =		mustache-0.99.4
REVISION =		2
CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv mustache.1 ${WRKINST}/${LOCALBASE}/man/man1/mustache${GEM_MAN_SUFFIX}.1 && \
		mv mustache.5 ${WRKINST}/${LOCALBASE}/man/man5/mustache${GEM_MAN_SUFFIX}.5
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

TEST_DEPENDS =	textproc/ruby-ronn,${MODRUBY_FLAVOR}
MODRUBY_TEST =	testrb
MODRUBY_TEST_TARGET = -I lib test/*_test.rb

.include <bsd.port.mk>
