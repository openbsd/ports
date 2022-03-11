COMMENT = tool to manage JBoss Wildfly installations

V =			4.2.8
PKGNAME =		galleon-${V}
DISTNAME =		${PKGNAME}.Final
PKG_ARCH =		*

MASTER_SITES =		https://github.com/wildfly/galleon/releases/download/${V}.Final/
EXTRACT_SUFX =		.zip

CATEGORIES =		sysutils java

HOMEPAGE =		https://docs.wildfly.org/21/Galleon_Guide.html

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# ASL2
PERMIT_PACKAGE =	Yes

MODULES =		java
MODJAVA_VER =		11+

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${SUBST_CMD} -c -m 555 ${FILESDIR}/galleon.sh ${PREFIX}/bin/galleon
	${INSTALL_DATA_DIR} ${PREFIX}/lib/galleon/bin
	for f in galleon-cli-logging.properties galleon-cli.jar galleon.sh; \
	do \
		${INSTALL_DATA} ${WRKDIST}/bin/$${f} ${PREFIX}/lib/galleon/bin; \
	done
	${SUBST_CMD} -c -m 555 ${FILESDIR}/galleon.8 ${PREFIX}/man/man8/galleon.8
	# ${INSTALL_MAN} ${FILESDIR}/galleon.8 ${PREFIX}/man/man8
	# ${SUBST_CMD} ${PREFIX}/man/man8/galleon.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/galleon
	${INSTALL_DATA} ${WRKDIST}/docs/index.html ${PREFIX}/share/doc/galleon

.include <bsd.port.mk>
