# $OpenBSD: Makefile,v 1.11 2018/10/24 14:28:05 sthen Exp $

COMMENT =	language for typesetting graphs

DISTNAME =	grap-1.45
REVISION =	2
CATEGORIES =	textproc graphics

HOMEPAGE =	http://lunabase.org/~faber/Vault/software/grap/

MAINTAINER =	Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		${HOMEPAGE}
WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
