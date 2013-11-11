# $OpenBSD: Makefile,v 1.1.1.1 2013/11/11 09:20:43 zhuk Exp $

ONLY_FOR_ARCHS-java =	i386 amd64
COMMENT-main =		syntactic parser of different languages
COMMENT-java =		Java bindings for link-grammar
VERSION =		4.8.0
DISTNAME =		link-grammar-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-java =		link-grammar-java-${VERSION}

SHARED_LIBS =		link-grammar		0.0
SHARED_LIBS +=		link-grammar-java	0.0

CATEGORIES =		textproc

HOMEPAGE =		http://www.abisource.com/projects/link-grammar/

# 3-clause BSDL or similar
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		http://www.abisource.com/downloads/link-grammar/${VERSION}/

MULTI_PACKAGES =	-main -java
PSEUDO_FLAVORS =	no_java

.include <bsd.port.arch.mk>

BUILD_DEPENDS =		textproc/aspell/core

RUN_DEPENDS-main =	textproc/aspell/core
RUN_DEPENDS-java =	${BUILD_PKGPATH},-main \
			${MODJAVA_RUN_DEPENDS}

SEPARATE_BUILD =	No
CONFIGURE_STYLE =	gnu

ADD_CFLAGS =		-I${JAVA_HOME}/include -I${JAVA_HOME}/include/openbsd
ADD_CFLAGS +=		-I${LOCALBASE}/include
CONFIGURE_ENV =		CFLAGS="${CFLAGS} ${ADD_CFLAGS}" \
			CPPFLAGS="${CPPFLAGS} ${ADD_CFLAGS}" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.if ${BUILD_PACKAGES:M-java}
MODULES =		java
MODJAVA_VER =		1.6+
BUILD_DEPENDS +=	devel/apache-ant
.else
CONFIGURE_ARGS +=	--disable-java-bindings
.endif

.include <bsd.port.mk>
