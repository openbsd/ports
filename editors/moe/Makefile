# $OpenBSD: Makefile,v 1.15 2022/02/19 14:11:07 bcallah Exp $

COMMENT =	powerful and user-friendly console text editor
DISTNAME =	moe-1.12
EXTRACT_SUFX =	.tar.lz
CATEGORIES =	editors

HOMEPAGE =	http://www.gnu.org/software/moe/moe.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_GNU:=moe/}

CONFIGURE_STYLE =	simple

MAKE_FLAGS =	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		sysconfdir="${SYSCONFDIR}"

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/moe" \
		mandir="${PREFIX}/man" \
		infodir="${PREFIX}/info"

NO_TEST =	Yes

.include <bsd.port.mk>
