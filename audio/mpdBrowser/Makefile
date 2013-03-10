# $OpenBSD: Makefile,v 1.11 2013/03/10 22:55:04 espie Exp $

COMMENT=		click & play MPD client

DISTNAME=		mpdBrowser-0.9.15
REVISION =		5
CATEGORIES=		audio

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://mpdbrowser.tuxfamily.org/
EXTRACT_SUFX=		.tgz

MODULES=		lang/python textproc/intltool

RUN_DEPENDS=		audio/py-mpd \
			devel/desktop-file-utils \
			x11/py-gtk2>=2.12.1


NO_TEST=		Yes

.include <bsd.port.mk>
