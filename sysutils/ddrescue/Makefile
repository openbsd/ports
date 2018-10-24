# $OpenBSD: Makefile,v 1.19 2018/10/24 14:28:10 sthen Exp $

COMMENT =		data recovery tool

DISTNAME =		ddrescue-1.23
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.gnu.org/software/ddrescue/ddrescue.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_GNU:=ddrescue/}

EXTRACT_SUFX =		.tar.lz

BUILD_DEPENDS = 	devel/help2man

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

ALL_TARGET =		all doc

.include <bsd.port.mk>
