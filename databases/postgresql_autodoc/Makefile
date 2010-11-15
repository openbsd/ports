# $OpenBSD: Makefile,v 1.3 2010/11/15 00:22:53 espie Exp $

COMMENT =	documentation generator for postgresql databases

DISTNAME =	postgresql_autodoc-1.40
CATEGORIES =	databases

HOMEPAGE =	http://www.rbt.ca/autodoc/
MASTER_SITES =	${HOMEPAGE}binaries/

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	databases/p5-DBD-Pg \
		devel/p5-Term-ReadKey \
		www/p5-HTML-Template

WRKDIST =	${WRKDIR}/postgresql_autodoc

PKG_ARCH =	*
NO_REGRESS =	Yes

.include <bsd.port.mk>
