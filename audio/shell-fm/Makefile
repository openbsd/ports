# $OpenBSD: Makefile,v 1.22 2013/03/10 22:55:05 espie Exp $

COMMENT=		console based player for last.fm radio streams

DISTNAME=		shell-fm-0.20121206

CATEGORIES=		audio

HOMEPAGE=		http://nex.scrapping.cc/shell-fm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		ao c m mad tag tag_c

MASTER_SITES=		http://distfiles.nl/

LIB_DEPENDS=		audio/libao \
			audio/libmad \
			audio/taglib

USE_GMAKE=		Yes

MAKE_FLAGS=		CC="${CC}"

FAKE_FLAGS=		INSTALL_MAN="${INSTALL_MAN}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

NO_TEST=		Yes

.include <bsd.port.mk>
