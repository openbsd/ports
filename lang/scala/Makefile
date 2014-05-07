# $OpenBSD: Makefile,v 1.8 2014/05/07 15:42:16 kurt Exp $

COMMENT=	general purpose multi-paradigm programming language

DISTNAME=	scala-2.10.1
CATEGORIES=	lang
REVISION=	0

HOMEPAGE=	http://www.scala-lang.org/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${HOMEPAGE}/downloads/distrib/files/
EXTRACT_SUFX=	.tgz

MODULES=	java
MODJAVA_VER=	1.6+

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
