# $OpenBSD: Makefile,v 1.3 2021/02/23 19:39:37 sthen Exp $

COMMENT =	command line tracking time tool

VERSION =	1.1.1
DISTNAME =	timew-${VERSION}
PKGNAME =	timewarrior-${VERSION}
CATEGORIES =	productivity

HOMEPAGE =	https://taskwarrior.org/

# MIT
PERMIT_PACKAGE =		Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES =	https://taskwarrior.org/download/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_RUNDEP =		No
MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	ext/totals.py

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTIMEW_DOCDIR=share/doc/timewarrior
CONFIGURE_ARGS +=	-DTIMEW_RCDIR=share/doc/timewarrior/rc
CONFIGURE_ARGS +=	-DTIMEW_MAN1DIR=man/man1

NO_TEST =		Yes

.include <bsd.port.mk>
