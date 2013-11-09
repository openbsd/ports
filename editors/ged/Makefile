# $OpenBSD: Makefile,v 1.5 2013/11/09 23:19:03 naddy Exp $

COMMENT =		GNU version of standard text editor

V =			1.8
DISTNAME =		ed-${V}
PKGNAME =		ged-${V}
REVISION =		0

CATEGORIES =		editors

HOMEPAGE =		https://www.gnu.org/software/ed/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_GNU:=ed/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--program-prefix=g \
			CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

FAKE_FLAGS =		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}"

.include <bsd.port.mk>
