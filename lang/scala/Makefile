COMMENT=	general purpose multi-paradigm programming language

VERSION =	3.6.2
JNA_VERSION=	5.15.0
JLINE_VERSION=	3.27.0
SCALA2_VERSION=	2.13.15

DISTNAME=	scala3-${VERSION}
PKGNAME=	${DISTNAME:S/scala3-/scala-/}
CATEGORIES=	lang

HOMEPAGE=	http://www.scala-lang.org/

# Apache2
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/scala/scala3/releases/download/${VERSION}/

MODULES=	java
# Offically scala requires 1.8+, but on OpenBSD it needs 17+
# https://github.com/scala/scala3/issues/21526
MODJAVA_VER=	17

RUN_DEPENDS=	java/javaPathHelper \
		shells/bash

SCALA_HOME=	${PREFIX}/scala/
SCALA_SCRIPTS=	scala scalac scaladoc

SUBST_VARS+=	VERSION JNA_VERSION JLINE_VERSION SCALA2_VERSION

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${SCALA_HOME}
	cd ${WRKSRC} && pax -rw -s '/.*\.bat$$//' . ${SCALA_HOME}
.for s in ${SCALA_SCRIPTS}
	${SUBST_PROGRAM} ${FILESDIR}/$s ${PREFIX}/bin/$s
.endfor

.include <bsd.port.mk>
