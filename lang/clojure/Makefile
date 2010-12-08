# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 21:21:14 ian Exp $

COMMENT =		Lisp-1 dialect for the Java Virtual Machine

V =			1.2.0
DISTNAME =		clojure-${V}
EXTRACT_SUFX =		.zip
PKGNAME =		clojure-${V}
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
MODJAVA_VER =		1.7+
MODJAVA_JRERUN = 	Yes

BUILD_DEPENDS =		devel/apache-ant
RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_REGRESS =		Yes

CLOJURE_HOME =		${PREFIX}/clojure

do-install:
			${INSTALL_DATA_DIR} ${CLOJURE_HOME}
			${INSTALL_DATA} ${WRKDIST}/clojure.jar ${CLOJURE_HOME}
			${INSTALL_SCRIPT} ${FILESDIR}/clojure ${PREFIX}/bin
			cd ${WRKDIST} && tar -cf - src | \
				tar -C ${CLOJURE_HOME} -xf -
			${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${CLOJURE_HOME}/src

.include <bsd.port.mk>
