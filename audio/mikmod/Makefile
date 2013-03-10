# $OpenBSD: Makefile,v 1.4 2013/03/10 22:55:03 espie Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.2
CATEGORIES =	audio
REVISION =	1

HOMEPAGE =	http://mikmod.shlomifish.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m mikmod ncurses pthread sndio

MASTER_SITES =	${HOMEPAGE}/files/

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	audio/libmikmod

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unzip

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
