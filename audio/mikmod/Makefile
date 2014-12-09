# $OpenBSD: Makefile,v 1.6 2014/12/09 20:29:03 sthen Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.6
REVISION =	0
CATEGORIES =	audio

HOMEPAGE =	http://mikmod.shlomifish.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m mikmod ncurses pthread sndio

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mikmod/}

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	audio/libmikmod

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unzip

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
