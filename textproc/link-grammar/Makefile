# $OpenBSD: Makefile,v 1.28 2016/08/28 09:44:06 ajacoutot Exp $

ONLY_FOR_ARCHS-java =	i386 amd64

COMMENT-main =		syntactic parser of different languages
COMMENT-java =		Java bindings for link-grammar
COMMENT-python =	Python bindings for link-grammar

VERSION =		5.3.9
DISTNAME =		link-grammar-${VERSION}

PKGNAME-main =		${DISTNAME}
PKGNAME-java =		link-grammar-java-${VERSION}
PKGNAME-python =	py-link-grammar-${VERSION}

SHARED_LIBS +=  minisat              1.0      # 2.0
SHARED_LIBS +=  link-grammar         4.0      # 8.7
SHARED_LIBS +=  link-grammar-java    4.0      # 8.7

CATEGORIES =		textproc

HOMEPAGE =		http://www.abisource.com/projects/link-grammar/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB += hunspell-1.3 m sqlite3

WANTLIB-main += ${cWANTLIB} ${MODGCC4_CPPWANTLIB} c

WANTLIB-java += ${cWANTLIB} link-grammar minisat

WANTLIB-python += ${cWANTLIB} ${MODGCC4_CPPWANTLIB} ${MODPY_WANTLIB}
WANTLIB-python += link-grammar minisat pthread util

MASTER_SITES =		http://www.abisource.com/downloads/link-grammar/${VERSION}/

MODULES =		lang/python

MODPY_ADJ_FILES =	bindings/python-examples/tests.py

# -std=c++03
MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

MULTI_PACKAGES =	-main -java -python
PSEUDO_FLAVORS =	no_java

.include <bsd.port.arch.mk>

BUILD_DEPENDS =		devel/swig

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			textproc/hunspell

LIB_DEPENDS-java =	${BUILD_PKGPATH},-main

LIB_DEPENDS-python =	${MODPY_LIB_DEPENDS} \
			${BUILD_PKGPATH},-main

RUN_DEPENDS-main =	# empty
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}
RUN_DEPENDS-python =	${MODPYTHON_RUN_DEPENDS}

TEST_DEPENDS =		${BUILD_PKGPATH},-python

SUBST_VARS =		VERSION

CONFIGURE_STYLE =	gnu

ADD_CFLAGS =		-I${JAVA_HOME}/include -I${JAVA_HOME}/include/openbsd
ADD_CFLAGS +=		-I${LOCALBASE}/include
CONFIGURE_ENV =		CFLAGS="${CFLAGS} ${ADD_CFLAGS}" \
			CPPFLAGS="${CPPFLAGS} ${ADD_CFLAGS}" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

CONFIGURE_ARGS =	--enable-perl-bindings \
			--enable-python-bindings \
			--with-hunspell-dictdir=${LOCALBASE}/share/mozilla-dicts

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.6+
BUILD_DEPENDS +=	devel/apache-ant
.else
CONFIGURE_ARGS +=	--disable-java-bindings
.endif

pre-configure:
	sed -i -e 's,-O2,,g;' -e 's,-O3,,g' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/clinkgrammar.{a,la}
	rm ${WRKINST}${MODPY_SITEPKG}/linkgrammar/_clinkgrammar.{a,la}

.include <bsd.port.mk>
