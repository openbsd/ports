# $OpenBSD: Makefile,v 1.6 2016/05/12 14:00:13 espie Exp $

COMMENT =	documentation generator for postgresql databases

DISTNAME =	postgresql_autodoc-1.40
CATEGORIES =	databases
REVISION =	1

HOMEPAGE =	http://www.rbt.ca/autodoc/
MASTER_SITES =	${HOMEPAGE}binaries/

# BSD
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	databases/p5-DBD-Pg \
		www/p5-HTML-Template

WRKDIST =	${WRKDIR}/postgresql_autodoc

PKG_ARCH =	*
NO_TEST =	Yes

.include <bsd.port.mk>
