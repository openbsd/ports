# $OpenBSD: Makefile,v 1.5 2015/11/05 19:08:56 jca Exp $

COMMENT =	documentation generator for postgresql databases

DISTNAME =	postgresql_autodoc-1.40
CATEGORIES =	databases
REVISION =	0

HOMEPAGE =	http://www.rbt.ca/autodoc/
MASTER_SITES =	${HOMEPAGE}binaries/

# BSD
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	databases/p5-DBD-Pg \
		devel/p5-Term-ReadKey \
		www/p5-HTML-Template

WRKDIST =	${WRKDIR}/postgresql_autodoc

PKG_ARCH =	*
NO_TEST =	Yes

.include <bsd.port.mk>
