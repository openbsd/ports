# $OpenBSD: Makefile,v 1.13 2019/07/17 14:46:32 danj Exp $

COMMENT =	language for typesetting graphs

DISTNAME =	grap-1.45
REVISION =	3
CATEGORIES =	textproc graphics

HOMEPAGE =	http://lunabase.org/~faber/Vault/software/grap/

# BSD
PERMIT_PACKAGE = Yes

MASTER_SITES =		${HOMEPAGE}
WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
