# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:55 sthen Exp $

COMMENT =		fast bitrot detection utility

DISTNAME =		yabitrot-0.3
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://sourceforge.net/projects/yabitrot/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=yabitrot/}
EXTRACT_SUFX =		.tgz

MODULES =		lang/python
MODPY_VERSION =         ${MODPY_DEFAULT_VERSION_3}
NO_BUILD =		yes
PKG_ARCH =		*

CONFIGURE_STYLE =	none

pre-install:
	${SUBST_CMD} ${WRKSRC}/yabitrot

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yabitrot/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/yabitrot/README

.include <bsd.port.mk>
