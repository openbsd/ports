COMMENT =	native libraries to speed up jitsi-srtp

CATEGORIES =	net

VERSION =	1.1pl20220605
DISTNAME =	jitsi-srtp-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jitsi-srtp
GH_COMMIT =	d9bbebfe367820ab358d2d92f5aa563d3fde403a

REVISION =	0

DISTFILES +=	${GH_DISTFILE}

# vendor maven dependencies
SITES.maven =	https://files.bsd.ac/openbsd-distfiles/
DISTFILES.maven +=	jitsi-srtp-deps-${VERSION}.tgz

MAINTAINER =	Philipp Buehler <pb-openbsd@sysfive.com>, \
		Aisha Tammy <aisha@openbsd.org>
# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake java
MODJAVA_VER =	11

WANTLIB =	crypto

BUILD_DEPENDS =		devel/maven

# upstream cmake file is _bad_
CONFIGURE_ARGS+= -DCMAKE_INSTALL_PREFIX=${PREFIX}/lib \
		 -DJITSI_SRTP_LIBSSL_VERSION=1.1

MAVEN_ARGS=	-offline -DskipTests=false -Dassembly.skipAssembly=false
MAVEN_REPO=	-Dmaven.repo.local=${WRKDIR}/m2


pre-build:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} mvn ${MAVEN_REPO} ${MAVEN_ARGS} compile


do-test:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} LD_LIBRARY_PATH=${WRKBUILD} \
			mvn ${MAVEN_REPO} ${MAVEN_ARGS} test


.include <bsd.port.mk>
