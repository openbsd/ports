# $OpenBSD: Makefile,v 1.2 2014/08/18 17:59:58 jca Exp $

COMMENT =		colorized diff tool
DISTNAME =		colordiff-1.0.13
CATEGORIES =		devel
HOMEPAGE =		http://www.colordiff.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		perl

# No need, docs come pre-rendered.
NO_BUILD =		Yes
NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

EXAMPLES_DIR =		${PREFIX}/share/examples/colordiff
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKBUILD}/colordiffrc* ${EXAMPLES_DIR}

.include <bsd.port.mk>
