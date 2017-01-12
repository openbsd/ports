# $OpenBSD: Makefile,v 1.3 2017/01/12 10:07:03 nigel Exp $

COMMENT =		gem to aid building Web Service Security

DISTNAME =		akami-1.3.1
REVISION =		0

HOMEPAGE =		https://github.com/savonrb/akami

CATEGORIES =		security

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-gyoku,${MODRUBY_FLAVOR} \
			textproc/ruby-nokogiri,${MODRUBY_FLAVOR}
MODRUBY_TEST =		rake rspec3

post-install:
	chmod -R u+rw,go+r-w ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/spec/

.include <bsd.port.mk>
