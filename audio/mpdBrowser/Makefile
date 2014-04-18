# $OpenBSD: Makefile,v 1.12 2014/04/18 23:06:07 jasper Exp $

COMMENT=		click & play MPD client

DISTNAME=		mpdBrowser-0.9.15
REVISION =		6
CATEGORIES=		audio

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://mpdbrowser.tuxfamily.org/
EXTRACT_SUFX=		.tgz

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

RUN_DEPENDS=		audio/py-mpd \
			devel/desktop-file-utils \
			x11/py-gtk2>=2.12.1

NO_TEST=		Yes

.include <bsd.port.mk>
