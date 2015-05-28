# $OpenBSD: Makefile,v 1.17 2015/05/28 10:17:25 pascal Exp $

ONLY_FOR_ARCHS-java =	i386 amd64
COMMENT-main =		syntactic parser of different languages
COMMENT-java =		Java bindings for link-grammar
VERSION =		5.2.5
DISTNAME =		link-grammar-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-java =		link-grammar-java-${VERSION}
REVISION-java =		0
REVISION-main =		0

SHARED_LIBS +=  minisat              0.0      # 2.0
SHARED_LIBS +=  sat-solver           1.0      # 4.0
SHARED_LIBS +=  link-grammar         3.0      # 7.0
SHARED_LIBS +=  link-grammar-java    3.0      # 7.0

CATEGORIES =		textproc

HOMEPAGE =		http://www.abisource.com/projects/link-grammar/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB += ${MODGETTEXT_WANTLIB} aspell m pthread sqlite3
WANTLIB-main += ${cWANTLIB} ${MODGCC4_CPPWANTLIB} c
WANTLIB-java += ${cWANTLIB} link-grammar minisat sat-solver

MASTER_SITES =		http://www.abisource.com/downloads/link-grammar/${VERSION}/

MODULES =		devel/gettext

# -std=c++11
MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

MULTI_PACKAGES =	-main -java
PSEUDO_FLAVORS =	no_java

.include <bsd.port.arch.mk>

BUILD_DEPENDS =		textproc/aspell/core

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			textproc/aspell/core

LIB_DEPENDS-java =	${MODGETTEXT_LIB_DEPENDS} \
			${BUILD_PKGPATH},-main

RUN_DEPENDS-main = 	${MODGETTEXT_RUN_DEPENDS}
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

SUBST_VARS =		VERSION

CONFIGURE_STYLE =	gnu

ADD_CFLAGS =		-I${JAVA_HOME}/include -I${JAVA_HOME}/include/openbsd
ADD_CFLAGS +=		-I${LOCALBASE}/include
CONFIGURE_ENV =		CFLAGS="${CFLAGS} ${ADD_CFLAGS}" \
			CPPFLAGS="${CPPFLAGS} ${ADD_CFLAGS}" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.if ${BUILD_PACKAGES:M-java}
MODULES +=		java
MODJAVA_VER =		1.6+
BUILD_DEPENDS +=	devel/apache-ant
.else
CONFIGURE_ARGS +=	--disable-java-bindings
.endif

pre-configure:
	perl -pi -e 's,-O2,,g;' -e 's,-O3,,g' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/clinkgrammar.{a,la}

.include <bsd.port.mk>
