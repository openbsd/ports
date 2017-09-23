# $OpenBSD: Makefile,v 1.6 2017/09/23 10:15:28 sthen Exp $

BROKEN-sparc64 =	Bus error (core dumped)

COMMENT =		lightweight, embeddable implementation of ruby

VERSION =		1.2.0
DISTNAME =		mruby-${VERSION}
REVISION =		1
CATEGORIES =		lang
HOMEPAGE =		https://github.com/mruby/mruby

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses readline termcap

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
	${SUBST_CMD} ${WRKSRC}/tasks/mruby_build.rake
	cd ${WRKSRC} && ${RUBY} ./minirake test

.include <bsd.port.mk>
