# $OpenBSD: Makefile,v 1.12 2019/07/12 21:02:21 sthen Exp $

COMMENT =	language for typesetting graphs

DISTNAME =	grap-1.45
REVISION =	2
CATEGORIES =	textproc graphics

HOMEPAGE =	http://lunabase.org/~faber/Vault/software/grap/

MAINTAINER =	Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE = Yes

MASTER_SITES =		${HOMEPAGE}
WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
