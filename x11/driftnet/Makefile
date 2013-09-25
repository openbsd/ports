# $OpenBSD: Makefile,v 1.14 2013/09/25 07:58:47 sthen Exp $

COMMENT=	network sniffer that grabs and displays images

VERSION =	1.0
DISTNAME=	driftnet_${VERSION}.orig
PKGNAME=	driftnet-${VERSION}
REVISION=	0
CATEGORIES=	x11

HOMEPAGE=	http://www.ex-parrot.com/~chris/driftnet/

MAINTAINER=	Claudio Jeker <claudio@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://launchpad.net/ubuntu/+archive/primary/+files/

WANTLIB += c pcap gif png pthread jpeg
WANTLIB += glib-2.0 gobject-2.0 gdk-x11-2.0 gtk-x11-2.0

LIB_DEPENDS=	graphics/giflib \
		graphics/jpeg \
		x11/gtk+2

NO_TEST=	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/gtk-2.0" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
