# $OpenBSD: Makefile,v 1.16 2017/07/23 09:26:29 espie Exp $

COMMENT =		data recovery tool

DISTNAME =		ddrescue-1.22
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.gnu.org/software/ddrescue/ddrescue.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_GNU:=ddrescue/}

EXTRACT_SUFX =		.tar.lz

BUILD_DEPENDS = 	devel/help2man

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

ALL_TARGET =		all doc

.include <bsd.port.mk>
