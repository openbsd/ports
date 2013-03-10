# $OpenBSD: Makefile,v 1.8 2013/03/10 22:55:03 espie Exp $

COMMENT=		library for interfacing MPD

DISTNAME=		libmpdclient-2.7
SHARED_LIBS=		mpdclient 1.2	# 2.5
CATEGORIES=		audio
HOMEPAGE=		http://mpd.wikia.com/wiki/ClientLib:libmpdclient

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# 3-BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
