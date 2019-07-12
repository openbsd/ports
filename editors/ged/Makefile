# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:05 sthen Exp $

COMMENT =		GNU version of standard text editor

V =			1.14.2
DISTNAME =		ed-${V}
PKGNAME =		ged-${V}

CATEGORIES =		editors

HOMEPAGE =		https://www.gnu.org/software/ed/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_GNU:=ed/}
EXTRACT_SUFX =		.tar.lz

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--program-prefix=g \
			CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

FAKE_FLAGS =		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
			INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}"

.include <bsd.port.mk>
