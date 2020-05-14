# $OpenBSD: Makefile,v 1.9 2020/05/14 18:59:22 kn Exp $

COMMENT =		Clojure project automation

GH_ACCOUNT =		technomancy
GH_PROJECT =		leiningen
GH_TAGNAME =		2.9.3

JAR_FILE =		${DISTNAME}-standalone.zip

CATEGORIES =		devel lang

HOMEPAGE =		https://leiningen.org

MASTER_SITES0 =		${MASTER_SITES:S/archive/releases\/download/}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} ${JAR_FILE}:0
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

# EPL
PERMIT_PACKAGE =	Yes

MODULES =		java
# upstream recommends OpenJDK 8, do not use + since JAVA_HOME is used
MODJAVA_VER =		1.8

RUN_DEPENDS =		lang/clojure>=1.10.1.0

NO_BUILD =		Yes
NO_TEST =		Yes

LEIN =			${WRKSRC}/bin/lein-pkg
DOC_DIR =		${PREFIX}/share/doc/leiningen
LEIN_DIR =		${PREFIX}/share/leiningen
BASH_DIR =		${PREFIX}/share/bash_completion.d
ZSH_DIR =		${PREFIX}/share/zsh/site-functions

SUBST_VARS +=		JAR_FILE \
			JAVA_HOME

do-install:
	${SUBST_PROGRAM} ${LEIN} ${PREFIX}/bin/lein
	${INSTALL_MAN} ${WRKSRC}/doc/lein.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${DOC_DIR} ${LEIN_DIR} ${BASH_DIR} ${ZSH_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${JAR_FILE} ${LEIN_DIR}/
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${DOC_DIR}/
	${INSTALL_DATA} ${WRKSRC}/bash_completion.bash ${BASH_DIR}/lein
	${INSTALL_DATA} ${WRKSRC}/zsh_completion.zsh ${ZSH_DIR}/_lein

.include <bsd.port.mk>
