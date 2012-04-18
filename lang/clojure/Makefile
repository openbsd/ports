# $OpenBSD: Makefile,v 1.14 2012/04/18 20:18:43 jasper Exp $

COMMENT =		Lisp-1 dialect for the Java Virtual Machine

V =			1.4.0
DISTNAME =		clojure-${V}
EXTRACT_SUFX =		.zip
PKG_ARCH =		*

CATEGORIES =		lang

HOMEPAGE =		http://www.clojure.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Eclipse Public License EPL 1.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://repo1.maven.org/maven2/org/clojure/clojure/$V/

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_BUILD = 	ant
MODJAVA_BUILD_TARGET =	jar
MODJAVA_JRERUN = 	Yes

RUN_DEPENDS =		java/javaPathHelper \
			misc/rlwrap

# Tests fail to compile (and need JAX-WS)
NO_REGRESS =		Yes

CLOJURE_HOME =		${PREFIX}/clojure

# Completions file created with:
# (def completions (mapcat (comp keys ns-publics) (all-ns)))
# (with-open [f (java.io.BufferedWriter. (java.io.FileWriter. "clj_completions"))]
#    (.write f (apply str (interpose \newline completions))))

do-install:
	${INSTALL_DATA_DIR} ${CLOJURE_HOME}
	${INSTALL_DATA} ${WRKSRC}/clojure.jar ${CLOJURE_HOME}
	@${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c \
		${FILESDIR}/clojure \
		${PREFIX}/bin/clojure
	cd ${WRKDIST} && tar -cf - src | tar -C ${CLOJURE_HOME} -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${CLOJURE_HOME}/src
	${INSTALL_DATA} ${FILESDIR}/clj_completions ${CLOJURE_HOME}

.include <bsd.port.mk>
