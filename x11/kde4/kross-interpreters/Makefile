# $OpenBSD: Makefile,v 1.11 2015/05/28 10:17:29 pascal Exp $

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

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtScript lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/krosscore

WANTLIB-main =  ${WANTLIB} ${MODPY_WANTLIB} ${MODRUBY_WANTLIB}
WANTLIB-main += lib/qt4/QtGui
WANTLIB-main += ${KDE4LIB}/kpty

MODKDE4_USE =		libs

# Unported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_FALCON:Bool=Yes

MODULES =		lang/python lang/ruby
CONFIGURE_ARGS +=	-DRUBY_EXECUTABLE=${RUBY}

.if ${FLAVOR:Mno_java}
CONFIGURE_ARGS +=	-DBUILD_java:Bool=No
.else
MODULES +=		java
MODJAVA_VER =		1.6+
MODJAVA_JRERUN =	Yes
.endif

LIB_DEPENDS-main =	${LIB_DEPENDS}

RUN_DEPENDS-main =	${MODPY_RUN_DEPENDS} \
			${MODRUBY_RUN_DEPENDS}

RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

.include <bsd.port.mk>
