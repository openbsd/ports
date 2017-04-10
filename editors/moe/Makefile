# $OpenBSD: Makefile,v 1.5 2017/04/10 11:45:27 sthen Exp $

COMMENT =	powerful and user-friendly console text editor
DISTNAME =	moe-1.8
EXTRACT_SUFX =	.tar.lz
CATEGORIES =	editors

HOMEPAGE =	http://www.gnu.org/software/moe/moe.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses ${LIBCXX}

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
