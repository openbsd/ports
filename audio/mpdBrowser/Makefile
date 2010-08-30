# $OpenBSD: Makefile,v 1.5 2010/08/30 21:36:14 fgsch Exp $

COMMENT=		click & play MPD client

DISTNAME=		mpdBrowser-0.9.15
REVISION =		3
CATEGORIES=		audio

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://mpdbrowser.tuxfamily.org/
EXTRACT_SUFX=		.tgz

MODULES=		lang/python textproc/intltool

RUN_DEPENDS=		::audio/py-mpd \
			::devel/desktop-file-utils \
			:py-gtk2->=2.12.1:x11/py-gtk2

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
