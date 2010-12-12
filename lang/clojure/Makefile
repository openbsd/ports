# $OpenBSD: Makefile,v 1.2 2010/12/12 17:28:16 ian Exp $

COMMENT =		Lisp-1 dialect for the Java Virtual Machine

V =			1.2.0
DISTNAME =		clojure-${V}
EXTRACT_SUFX =		.zip
REVISION =		0
PKG_ARCH =		*

CATEGORIES =		lang java

HOMEPAGE =		http://www.clojure.org/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Eclipse Public License EPL 1.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://github.com/downloads/clojure/clojure/

MODULES =		java
MODJAVA_VER =		1.6+
MODJAVA_JRERUN = 	Yes

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_REGRESS =		Yes

CLOJURE_HOME =		${PREFIX}/clojure


do-install:
			${INSTALL_DATA_DIR} ${CLOJURE_HOME}
			${INSTALL_DATA} ${WRKDIST}/clojure.jar ${CLOJURE_HOME}
			@${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c \
				${FILESDIR}/clojure \
				${PREFIX}/bin/clojure
			cd ${WRKDIST} && tar -cf - src | \
				tar -C ${CLOJURE_HOME} -xf -
			${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${CLOJURE_HOME}/src

.include <bsd.port.mk>
