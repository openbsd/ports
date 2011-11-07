# $OpenBSD: Makefile,v 1.6 2011/11/07 12:36:08 sthen Exp $

COMMENT=		library for interfacing MPD

DISTNAME=		libmpdclient-2.6
SHARED_LIBS=		mpdclient 1.1	# 2.5
CATEGORIES=		audio
HOMEPAGE=		http://mpd.wikia.com/wiki/ClientLib:libmpdclient

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# 3-BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		ac_cv_path_DOXYGEN=""

.include <bsd.port.mk>
