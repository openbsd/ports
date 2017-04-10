# $OpenBSD: Makefile,v 1.3 2017/04/10 11:46:22 sthen Exp $
COMMENT =		easy to use propositional logic solver based on MiniSAT

DISTNAME =		logic2cnf-0.7.2

CATEGORIES =		math lang

HOMEPAGE =		http://projects.cs.kent.ac.uk/projects/logic2cnf/trac/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m ${LIBCXX}

MASTER_SITES =		${HOMEPAGE}/raw-attachment/wiki/releases/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
