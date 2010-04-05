# $OpenBSD: Makefile,v 1.2 2010/04/05 22:09:55 ajacoutot Exp $

COMMENT=		library for interfacing MPD

DISTNAME=		libmpdclient-2.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		mpdclient 0.0	# 2.0
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
