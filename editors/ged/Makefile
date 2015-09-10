# $OpenBSD: Makefile,v 1.8 2015/09/10 16:48:33 pascal Exp $

COMMENT =		GNU version of standard text editor

V =			1.12
DISTNAME =		ed-${V}
PKGNAME =		ged-${V}

CATEGORIES =		editors

HOMEPAGE =		https://www.gnu.org/software/ed/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_GNU:=ed/}
EXTRACT_SUFX =		.tar.lz

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--program-prefix=g \
			CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

FAKE_FLAGS =		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}"

.include <bsd.port.mk>
