# $OpenBSD: Makefile,v 1.2 2015/05/15 02:33:26 bcallah Exp $

COMMENT =	powerful and user-friendly console text editor
DISTNAME =	moe-1.7
EXTRACT_SUFX =	.tar.lz
CATEGORIES =	editors

HOMEPAGE =	http://www.gnu.org/software/moe/moe.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses stdc++

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=moe/}

CONFIGURE_STYLE =	simple

MAKE_FLAGS =	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		sysconfdir="${SYSCONFDIR}"

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/moe" \
		mandir="${PREFIX}/man" \
		infodir="${PREFIX}/info"

NO_TEST =	Yes

.include <bsd.port.mk>
