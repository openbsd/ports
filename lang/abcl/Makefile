COMMENT =		Common Lisp dialect for the Java Virtual Machine
V =			1.9.2
DISTNAME =		abcl-src-${V}
PKGNAME =		abcl-${V}
PKG_ARCH =		*

CATEGORIES =		lang

HOMEPAGE =		https://abcl.org/

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =			${HOMEPAGE}/releases/${V}/

EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

# Remember to keep MODJAVA_VER in sync with jna
MODULES =		java
MODJAVA_VER =		11
MODJAVA_BUILD =		ant
MODJAVA_BUILD_TARGET_NAME =	abcl.jar

BUILD_DEPENDS =		shells/bash

RUN_DEPENDS =		java/javaPathHelper \
			java/jna \
			misc/rlwrap

NO_TEST =		Yes

ABCL_HOME =		${PREFIX}/abcl

pre-configure:
	bash ${WRKSRC}/ci/create-abcl-properties.bash ${MODJAVA_VER}

do-install:
	${INSTALL_DATA_DIR} ${ABCL_HOME}
	${INSTALL_DATA} ${WRKSRC}/dist/abcl.jar ${ABCL_HOME}
	${INSTALL_DATA} ${WRKSRC}/dist/abcl-contrib.jar ${ABCL_HOME}
	${SUBST_PROGRAM} ${FILESDIR}/abcl ${PREFIX}/bin/abcl
	cd ${WRKDIST} && tar -cf - src | tar -C ${ABCL_HOME} -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${ABCL_HOME}/src
	${INSTALL_DATA} ${FILESDIR}/abcl_completions ${ABCL_HOME}

# maintainer target to generate completions file
completions: install
	${LOCALBASE}/bin/abcl --noinit --load ${FILESDIR}/gen-completions.lisp

.include <bsd.port.mk>
