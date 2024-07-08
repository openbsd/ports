COMMENT=	interactive build tool, primarily for Scala/Java

V=		1.10.1
DISTNAME=	sbt-$V
CATEGORIES=	devel

HOMEPAGE=	https://scala-sbt.org
SITES =		https://github.com/sbt/sbt/releases/download/v$V/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Kirill A. Korinsky <kirill@korins.ky>

# Apache Software License 2.0
PERMIT_PACKAGE=	Yes

MODULES=	java
MODJAVA_VER=	1.8+
RUN_DEPENDS=	java/javaPathHelper \
		shells/bash

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST =	${WRKDIR}/sbt

do-install:
	${SUBST_CMD} ${WRKSRC}/bin/sbt
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/sbt
	cd ${WRKDIST} && \
		tar -cf - bin conf `find * -prune -type f` | \
		tar -C ${PREFIX}/libexec/sbt -xf -
	${SUBST_PROGRAM} ${FILESDIR}/sbt ${PREFIX}/bin/sbt
	find ${WRKINST} \( \
		-name \*.bat -o -name \*.exe -o -name \*-linux -o -name \*-darwin \
		-o -name \*${PATCHORIG} -o -name \*.beforesubst \
		\) -delete

.include <bsd.port.mk>
