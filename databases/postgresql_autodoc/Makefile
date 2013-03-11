# $OpenBSD: Makefile,v 1.4 2013/03/11 02:52:07 espie Exp $

COMMENT =	documentation generator for postgresql databases

DISTNAME =	postgresql_autodoc-1.40
CATEGORIES =	databases

HOMEPAGE =	http://www.rbt.ca/autodoc/
MASTER_SITES =	${HOMEPAGE}binaries/

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	databases/p5-DBD-Pg \
		devel/p5-Term-ReadKey \
		www/p5-HTML-Template

WRKDIST =	${WRKDIR}/postgresql_autodoc

PKG_ARCH =	*
NO_TEST =	Yes

.include <bsd.port.mk>
