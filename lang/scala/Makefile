# $OpenBSD: Makefile,v 1.13 2019/08/20 18:53:14 tb Exp $

COMMENT=	general purpose multi-paradigm programming language

VERSION =	2.12.9
DISTNAME=	scala-${VERSION}
CATEGORIES=	lang

HOMEPAGE=	http://www.scala-lang.org/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://downloads.lightbend.com/scala/${VERSION}/
EXTRACT_SUFX=	.tgz

MODULES=	java
MODJAVA_VER=	1.8+

RUN_DEPENDS=	java/javaPathHelper \
		shells/bash

SCALA_HOME=	${PREFIX}/scala/
SCALA_SCRIPTS=	fsc scala scalac scalap scaladoc

NO_BUILD=	Yes
NO_TEST=	Yes

# Remove BAT files which we obviously don't want installed.
post-extract:
	rm ${WRKSRC}/bin/*.bat

do-install:
	${INSTALL_DATA_DIR} ${SCALA_HOME}
	cd ${WRKSRC} && tar -cf - bin doc lib misc src | \
		tar -xf - -C ${SCALA_HOME}
	${INSTALL_MAN} ${WRKSRC}/man/man1/*.1 ${PREFIX}/man/man1/
	# Install the wrapper scripts
.for s in ${SCALA_SCRIPTS}
	${INSTALL_SCRIPT} ${FILESDIR}/$s ${PREFIX}/bin/
	${SUBST_CMD} ${PREFIX}/bin/$s
	rm ${PREFIX}/bin/$s.beforesubst
.endfor

.include <bsd.port.mk>
