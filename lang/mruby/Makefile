# $OpenBSD: Makefile,v 1.18 2020/11/17 03:19:37 jeremy Exp $

BROKEN-arm =		SIGBUS

COMMENT =		lightweight, embeddable implementation of ruby

# Keep in sync with the version bundled in www/h2o
GH_ACCOUNT =		mruby
GH_PROJECT =		mruby
GH_TAGNAME =		2.0.1
REVISION =		1

CATEGORIES =		lang
HOMEPAGE =		https://mruby.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m readline

MODULES =		lang/ruby
BUILD_DEPENDS =		devel/bison \
			lang/ruby/${MODRUBY_REV}

MAKE_ENV =		CC="${CC}" \
			LD="${CC}"

NO_CONFIGURE =		Yes
SUBST_VARS =		RUBY

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} ./minirake --verbose

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/{lib,include,share/doc}/mruby/ 
	cp -R ${WRKSRC}/mrb{lib,gems} ${PREFIX}/lib/mruby/
	cp -R ${WRKSRC}/include/* ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/doc/guides/* ${PREFIX}/share/doc/mruby/ 

do-test:
	cd ${WRKSRC} && RUBY=${RUBY} ${RUBY} ./minirake test

.include <bsd.port.mk>
