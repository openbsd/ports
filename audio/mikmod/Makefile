# $OpenBSD: Makefile,v 1.3 2013/01/13 20:21:53 bcallah Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.2
CATEGORIES =	audio
REVISION =	1

HOMEPAGE =	http://mikmod.shlomifish.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m mikmod ncurses pthread sndio

MASTER_SITES =	${HOMEPAGE}/files/

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	audio/libmikmod

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unzip

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
