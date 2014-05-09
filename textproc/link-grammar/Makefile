# $OpenBSD: Makefile,v 1.7 2014/05/09 06:33:34 ajacoutot Exp $

ONLY_FOR_ARCHS-java =	i386 amd64
COMMENT-main =		syntactic parser of different languages
COMMENT-java =		Java bindings for link-grammar
VERSION =		5.0.7
DISTNAME =		link-grammar-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-java =		link-grammar-java-${VERSION}
REVISION-main =		1
REVISION-java =		0

SHARED_LIBS +=  link-grammar         1.0      # 5.5
SHARED_LIBS +=  link-grammar-java    1.0      # 5.5

CATEGORIES =		textproc

HOMEPAGE =		http://www.abisource.com/projects/link-grammar/

# 3-clause BSDL or similar
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += aspell m pthread sqlite3
WANTLIB-main += ${WANTLIB} c
WANTLIB-java += ${WANTLIB} link-grammar

MASTER_SITES =		http://www.abisource.com/downloads/link-grammar/${VERSION}/

MODULES =		devel/gettext

MULTI_PACKAGES =	-main -java
PSEUDO_FLAVORS =	no_java

.include <bsd.port.arch.mk>

BUILD_DEPENDS =		textproc/aspell/core

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			textproc/aspell/core

LIB_DEPENDS-java =	${LIB_DEPENDS} \
			${BUILD_PKGPATH},-main

RUN_DEPENDS-main = 	${MODGETTEXT_RUN_DEPENDS}
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

SEPARATE_BUILD =	No
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

post-install:
	rm ${PREFIX}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/clinkgrammar.{a,la}

.include <bsd.port.mk>
