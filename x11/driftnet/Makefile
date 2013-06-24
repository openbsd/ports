# $OpenBSD: Makefile,v 1.13 2013/06/24 16:48:43 sebastia Exp $

COMMENT=	network sniffer that grabs and displays images

VERSION =	1.0
DISTNAME=	driftnet_${VERSION}.orig
PKGNAME=	driftnet-${VERSION}
CATEGORIES=	x11

HOMEPAGE=	http://www.ex-parrot.com/~chris/driftnet/

MAINTAINER=	Claudio Jeker <claudio@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://launchpad.net/ubuntu/+archive/primary/+files/

WANTLIB += c pcap gif png pthread jpeg
WANTLIB += glib-2.0 gobject-2.0 gdk-x11-2.0 gtk-x11-2.0

LIB_DEPENDS=	graphics/libungif \
		graphics/jpeg \
		x11/gtk+2

NO_TEST=	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/gtk-2.0" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
