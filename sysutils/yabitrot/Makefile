COMMENT =		fast bitrot detection utility

V =			0.4
DISTNAME =		yabitrot-${V}
REVISION =		4

CATEGORIES =		sysutils

HOMEPAGE =		https://sourceforge.net/projects/yabitrot/

MAINTAINER =		Martin Ziemer <horrad@horrad.de>

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=yabitrot/}
EXTRACT_SUFX =		.tar.gz

MODULES =		lang/python
NO_BUILD =		yes
PKG_ARCH =		*

WRKDIST =		${WRKDIR}/yabitrot-${V}

CONFIGURE_STYLE =	none

pre-install:
	${SUBST_CMD} ${WRKSRC}/yabitrot

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/yabitrot ${PREFIX}/bin/yabitrot
	${INSTALL_MAN} ${WRKSRC}/yabitrot.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yabitrot/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/yabitrot/README

.include <bsd.port.mk>
