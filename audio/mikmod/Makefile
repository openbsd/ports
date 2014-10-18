# $OpenBSD: Makefile,v 1.5 2014/10/18 14:57:37 bcallah Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.6
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
