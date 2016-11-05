# $OpenBSD: Makefile,v 1.1.1.1 2016/11/05 22:31:28 jeremy Exp $

COMMENT =		lightweight, embeddable implementation of ruby

VERSION =		1.2.0
DISTNAME =		mruby-${VERSION}
CATEGORIES =		lang
HOMEPAGE =		https://github.com/mruby/mruby

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/mruby/mruby/archive/
DISTFILES =		${DISTNAME}-${VERSION}.tar.gz{${VERSION}.tar.gz}

MODULES =		lang/ruby
BUILD_DEPENDS =		devel/bison \
			lang/ruby/${MODRUBY_REV}

NO_CONFIGURE =		Yes
SUBST_VARS =		RUBY

do-build:
	cd ${WRKSRC} && ${RUBY} ./minirake

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
