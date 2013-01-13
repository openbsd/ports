# $OpenBSD: Makefile,v 1.1.1.1 2013/01/13 16:33:58 bcallah Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.2
CATEGORIES =	audio

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

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
