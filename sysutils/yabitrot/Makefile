# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:12 sthen Exp $

COMMENT =		fast bitrot detection utility

V =			0.4
DISTNAME =		yabitrot-${V}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://sourceforge.net/projects/yabitrot/

MAINTAINER =		Martin Ziemer <horrad@horrad.de>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=yabitrot/}
EXTRACT_SUFX =		.tar.gz

MODULES =		lang/python
MODPY_VERSION =         ${MODPY_DEFAULT_VERSION_3}
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
