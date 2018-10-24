# $OpenBSD: Makefile,v 1.7 2018/10/24 14:28:00 sthen Exp $

V =		2.22.6
COMMENT =	command line parser for c programs
DISTNAME =	gengetopt-${V}
CATEGORIES =	devel
REVISION =	3

HOMEPAGE =	http://www.gnu.org/software/gengetopt/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_GNU:=gengetopt/}

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
