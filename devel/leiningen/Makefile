COMMENT =		Clojure project automation

V =			2.11.2
DIST_TUPLE =		codeberg leiningen leiningen $V .

JAR_FILE =		${DISTNAME}-standalone.jar

CATEGORIES =		devel lang

HOMEPAGE =		https://leiningen.org

SITES.jar =		https://codeberg.org/leiningen/leiningen/releases/download/$V/
DISTFILES.jar =		${JAR_FILE}
EXTRACT_ONLY =		${ALL_DISTFILES:N*.jar}

# EPL
PERMIT_PACKAGE =	Yes

MODULES =		java
# upstream recommends OpenJDK 8, do not use + since JAVA_HOME is used
MODJAVA_VER =		1.8

NO_BUILD =		Yes
NO_TEST =		Yes

LEIN =			${WRKSRC}/bin/lein-pkg
DOC_DIR =		${PREFIX}/share/doc/leiningen
LEIN_DIR =		${PREFIX}/share/leiningen
BASH_DIR =		${PREFIX}/share/bash_completion.d
ZSH_DIR =		${PREFIX}/share/zsh/site-functions

SUBST_VARS +=		JAR_FILE \
			JAVA_HOME

WRKDIST =		${WRKDIR}/leiningen

do-install:
	${SUBST_PROGRAM} ${LEIN} ${PREFIX}/bin/lein
	${INSTALL_MAN} ${WRKSRC}/doc/lein.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${DOC_DIR} ${LEIN_DIR} ${BASH_DIR} ${ZSH_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${JAR_FILE} ${LEIN_DIR}/
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${DOC_DIR}/
	${INSTALL_DATA} ${WRKSRC}/bash_completion.bash ${BASH_DIR}/lein
	${INSTALL_DATA} ${WRKSRC}/zsh_completion.zsh ${ZSH_DIR}/_lein

.include <bsd.port.mk>
