COMMENT=	general purpose multi-paradigm programming language

VERSION =	3.4.2
DISTNAME=	scala3-${VERSION}
PKGNAME=	${DISTNAME:S/scala3-/scala-/}
CATEGORIES=	lang

HOMEPAGE=	http://www.scala-lang.org/

# Apache2
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/scala/scala3/releases/download/${VERSION}/

MODULES=	java
MODJAVA_VER=	1.8+

RUN_DEPENDS=	java/javaPathHelper \
		shells/bash

SCALA_HOME=	${PREFIX}/scala/
SCALA_SCRIPTS=	scala scalac scaladoc

NO_BUILD=	Yes
NO_TEST=	Yes

# Remove BAT files which we obviously don't want installed.
post-extract:
	rm ${WRKSRC}/bin/*.bat

do-install:
	${INSTALL_DATA_DIR} ${SCALA_HOME}
	cd ${WRKSRC} && tar -cf - bin lib | \
		tar -xf - -C ${SCALA_HOME}
	# Install the wrapper scripts
.for s in ${SCALA_SCRIPTS}
	${INSTALL_SCRIPT} ${FILESDIR}/$s ${PREFIX}/bin/
	${SUBST_CMD} ${PREFIX}/bin/$s
	rm ${PREFIX}/bin/$s.beforesubst
.endfor

.include <bsd.port.mk>
