COMMENT =	Lisp-1 dialect for the Java Virtual Machine

V =		1.11.2.1446
DISTNAME =	clojure-tools-$V
PKGNAME =	clojure-$V

PKG_ARCH =	*

CATEGORIES =	lang

HOMEPAGE =	https://www.clojure.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# Eclipse Public License EPL 1.0
PERMIT_PACKAGE = Yes

SITES =		https://github.com/clojure/brew-install/releases/download/$V/

MODULES =	java
MODJAVA_VER =	1.8+

WRKDIST =	${WRKDIR}/clojure-tools

RUN_DEPENDS =	java/javaPathHelper \
		misc/rlwrap \
		shells/bash

NO_BUILD =	Yes
NO_TEST =	Yes

CLOJURE_HOME =	${PREFIX}/clojure
SUBST_VARS +=	V

# Maintainer target to generate completions file
completions: install
	${LOCALBASE}/bin/clojure -M ${FILESDIR}/clj_completions.clj

pre-configure:
	sed -i 's,PREFIX,${CLOJURE_HOME},' ${WRKSRC}/clojure
	sed -i 's,BINDIR,${LOCALBASE}/bin,' ${WRKSRC}/clj

do-install:
	${INSTALL_DATA_DIR} ${CLOJURE_HOME}/libexec/ ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/*.edn ${CLOJURE_HOME}
	${INSTALL_DATA} ${WRKSRC}/*.jar ${CLOJURE_HOME}/libexec/
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1/
	${INSTALL_SCRIPT} ${WRKSRC}/{clj,clojure} ${PREFIX}/bin/
	${INSTALL_DATA} ${FILESDIR}/clj_completions ${CLOJURE_HOME}

.include <bsd.port.mk>
