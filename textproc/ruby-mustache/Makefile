# $OpenBSD: Makefile,v 1.2 2012/09/23 16:57:35 jeremy Exp $

COMMENT =		logic-free template language

DISTNAME =		mustache-0.99.4
REVISION =		0
CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man && \
		mv mustache.1 ${WRKINST}/${LOCALBASE}/man/man1/mustache${GEM_MAN_SUFFIX}.1 && \
		mv mustache.5 ${WRKINST}/${LOCALBASE}/man/man5/mustache${GEM_MAN_SUFFIX}.5
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

REGRESS_DEPENDS =	textproc/ruby-ronn,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	testrb
MODRUBY_REGRESS_TARGET = -I lib test/*_test.rb

.include <bsd.port.mk>
