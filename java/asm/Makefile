# $OpenBSD: Makefile,v 1.4 2014/05/07 15:42:16 kurt Exp $

COMMENT=	Java bytecode manipulation framework

V=		3.3.1
DISTNAME=	asm-$V
CATEGORIES=	java devel
REVISION=	0

HOMEPAGE=	http://asm.ow2.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.forge.objectweb.org/asm/

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_BUILD=	ant
MODJAVA_BUILD_TARGET_NAME = dist

JARS=		asm asm-analysis asm-commons asm-tree asm-util asm-xml

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant dist

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_SHARE_DIR}/asm/
.for j in ${JARS}
	${INSTALL_DATA} ${WRKSRC}/output/dist/lib/$j-$V.jar \
		${MODJAVA_JAR_DIR}/$j.jar
.endfor
	${INSTALL_DATA} ${WRKSRC}/output/dist/lib/all/asm-all-$V.jar \
		${MODJAVA_JAR_DIR}/asm-all.jar
	cp -r ${WRKSRC}/output/dist/{doc,examples}/ ${MODJAVA_SHARE_DIR}/asm/

.include <bsd.port.mk>
