COMMENT =	Google data interchange format (protocol buffers)

JAVAMAJOR=		4
PROTOBUF_VERSION=	33.5

V=		${JAVAMAJOR}.${PROTOBUF_VERSION}

DISTNAME =	protobuf-java-${V}

CATEGORIES =	devel

HOMEPAGE =	https://protobuf.dev/

# BSD
PERMIT_PACKAGE =	Yes

SITES =		https://repo1.maven.org/maven2/com/google/protobuf/protobuf-java/${V}/

EXTRACT_SUFX =	.jar
EXTRACT_ONLY =

MODULES =	java
MODJAVA_VER =	11+

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}.jar \
	    ${MODJAVA_JAR_DIR}/protobuf-java.jar

.include <bsd.port.mk>
