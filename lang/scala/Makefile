COMMENT=	general purpose multi-paradigm programming language

VERSION=	3.7.3

DISTNAME=	scala3-${VERSION}
PKGNAME=	${DISTNAME:S/scala3-/scala-/:S/-RC/rc/}
CATEGORIES=	lang

HOMEPAGE=	https://www.scala-lang.org/

MAINTAINER=	Kirill A. Korinsky <kirill@korins.ky>

# Apache2
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/scala/scala3/releases/download/${VERSION}/

MODULES=	java
# Offically scala requires 1.8+, but on OpenBSD it needs 17+
# https://github.com/scala/scala3/issues/21526
MODJAVA_VER=	17+

RUN_DEPENDS=	java/javaPathHelper \
		shells/bash

SCALA_HOME=	${PREFIX}/scala/
SCALA_SCRIPTS=	scala scalac scaladoc

SUBST_VARS+=	VERSION

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${SCALA_HOME}
	cd ${WRKSRC} && pax -rw -s '/.*\.bat$$//' . ${SCALA_HOME}
.for s in ${SCALA_SCRIPTS}
	${SUBST_PROGRAM} ${FILESDIR}/$s ${PREFIX}/bin/$s
.endfor

.include <bsd.port.mk>
