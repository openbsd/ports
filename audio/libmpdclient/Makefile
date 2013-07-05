# $OpenBSD: Makefile,v 1.10 2013/07/05 23:05:23 espie Exp $

COMMENT=		library for interfacing MPD

DISTNAME=		libmpdclient-2.7
SHARED_LIBS=		mpdclient 1.2	# 2.5
CATEGORIES=		audio
HOMEPAGE=		http://mpd.wikia.com/wiki/ClientLib:libmpdclient
NOT_FOR_ARCHS =		${GCC2_ARCHS}

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# 3-BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
