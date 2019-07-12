# $OpenBSD: Makefile,v 1.20 2019/07/12 20:46:18 sthen Exp $

COMMENT=		curses-based interpreter for Infocom-compatible games

DISTNAME=		frotz-2.44
REVISION=		0
CATEGORIES=     	games

HOMEPAGE=		http://frotz.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=frotz/}

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}" CONFIG_DIR="${SYSCONFDIR}"
FAKE_FLAGS=		PREFIX=${WRKINST}${TRUEPREFIX}

ALL_TARGET=		frotz dfrotz
INSTALL_TARGET=		install install_dumb

CFLAGS +=		-DUSE_UNISTD_H -DCOLOR_SUPPORT -DEMACS_EDITING

NO_TEST=		Yes

.include <bsd.port.mk>
