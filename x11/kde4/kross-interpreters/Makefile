# $OpenBSD: Makefile,v 1.3 2013/11/24 19:56:32 zhuk Exp $

COMMENT-main =	KDE bindings for running interpreters
COMMENT-java =	KDE Java bindings
DISTNAME =	kross-interpreters-${MODKDE4_VERSION}
PKGNAME-main =	${PKGNAME}
PKGNAME-java =	${PKGNAME:C/interpreters/java/}
REVISION-java =	0
REVISION-main =	0

MULTI_PACKAGES =	-main -java

# XXX Can't use <bsd.port.arch.mk> due to mishandling of MODULES
# causing MODKDE4_VERSION to be undefined.
PSEUDO_FLAVORS =	no_java
FLAVOR ?=

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtScript lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/krosscore

WANTLIB-main =  ${WANTLIB} ${MODPY_WANTLIB} ${MODRUBY_WANTLIB}
WANTLIB-main += lib/qt4/QtGui
WANTLIB-main += ${KDE4LIB}/kpty

MODULES =		lang/python
MODKDE4_USE =		libs

# Unported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_FALCON:Bool=Yes

# TODO: Ruby 2.0 should be acceptable choice probably, too
MODULES =		lang/python lang/ruby
MODRUBY_REV =		1.9
CONFIGURE_ARGS +=	-DRUBY_EXECUTABLE=${RUBY}

.if ${FLAVOR:Mno_java}
CONFIGURE_ARGS +=	-DBUILD_java:Bool=No
.else
MODULES +=		java
MODJAVA_VER =		1.7
MODJAVA_JRERUN =	Yes
.endif

LIB_DEPENDS-main =	${LIB_DEPENDS}

RUN_DEPENDS-main =	${RUN_DEPENDS-common} \
			${MODPY_RUN_DEPENDS} \
			${MODRUBY_RUN_DEPENDS}

RUN_DEPENDS-java =	${RUN_DEPENDS-common} \
			${MODJAVA_RUN_DEPENDS}

.include <bsd.port.mk>
