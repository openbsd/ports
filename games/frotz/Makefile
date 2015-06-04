# $OpenBSD: Makefile,v 1.18 2015/06/04 06:17:38 ajacoutot Exp $

COMMENT=		curses-based interpreter for Infocom-compatible games

DISTNAME=		frotz-2.44
CATEGORIES=     	games

HOMEPAGE=		http://frotz.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=frotz/}

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}" CONFIG_DIR="${SYSCONFDIR}"
FAKE_FLAGS=		PREFIX=${WRKINST}${TRUEPREFIX}

ALL_TARGET=		frotz

CFLAGS +=		-DUSE_UNISTD_H -DCOLOR_SUPPORT -DEMACS_EDITING

NO_TEST=		Yes

.include <bsd.port.mk>
