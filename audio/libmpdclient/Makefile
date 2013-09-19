# $OpenBSD: Makefile,v 1.12 2013/09/19 18:00:33 dcoppa Exp $

COMMENT=		library for interfacing MPD

MAJV=			2
MINV=			8
DISTNAME=		libmpdclient-${MAJV}.${MINV}
SHARED_LIBS=		mpdclient 1.3	# 2.8
CATEGORIES=		audio
HOMEPAGE=		http://www.musicpd.org/libs/libmpdclient/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# 3-BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.musicpd.org/download/libmpdclient/${MAJV}/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-documentation

.include <bsd.port.mk>
