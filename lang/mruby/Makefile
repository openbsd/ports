# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:20 sthen Exp $

COMMENT =		lightweight, embeddable implementation of ruby

VERSION =		2.0.0
DISTNAME =		mruby-${VERSION}
REVISION =		1
CATEGORIES =		lang
HOMEPAGE =		https://github.com/mruby/mruby

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c curses m readline

MASTER_SITES =		https://github.com/mruby/mruby/archive/
DISTFILES =		${DISTNAME}-${VERSION}.tar.gz{${VERSION}.tar.gz}

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
