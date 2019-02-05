# $OpenBSD: Makefile,v 1.32 2019/02/05 07:49:32 sunil Exp $

COMMENT =		Lisp-1 dialect for the Java Virtual Machine

V =			1.10.0.411
DISTNAME =		clojure-tools-$V
PKGNAME =		clojure-$V

PKG_ARCH =		*

CATEGORIES =		lang

HOMEPAGE =		http://www.clojure.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Eclipse Public License EPL 1.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://download.clojure.org/install/

MODULES =		java
MODJAVA_VER =		1.8+
NO_BUILD =		Yes

WRKDIST =		${WRKDIR}/clojure-tools

RUN_DEPENDS =		java/javaPathHelper \
			misc/rlwrap \
			shells/bash

NO_TEST =		Yes

CLOJURE_HOME =		${PREFIX}/clojure
SUBST_VARS +=		V

# Maintainer target to generate completions file
completions: install
	${LOCALBASE}/bin/clojure ${FILESDIR}/clj_completions.clj

pre-configure:
	sed -i 's,PREFIX,${CLOJURE_HOME},' ${WRKSRC}/clojure

do-install:
	${INSTALL_DATA_DIR} ${CLOJURE_HOME}/libexec/ ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/*.edn ${CLOJURE_HOME}
	${INSTALL_DATA} ${WRKSRC}/*.jar ${CLOJURE_HOME}/libexec/
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1/
	${INSTALL_SCRIPT} ${WRKSRC}/{clj,clojure} ${PREFIX}/bin/
	${INSTALL_DATA} ${FILESDIR}/clj_completions ${CLOJURE_HOME}

.include <bsd.port.mk>
