# $OpenBSD: Makefile,v 1.1.1.1 2007/04/30 13:38:50 claudio Exp $

COMMENT=	"network sniffer that grabs and displays images"

DISTNAME=	driftnet-0.1.6
CATEGORIES=	x11

HOMEPAGE=	http://www.ex-parrot.com/~chris/driftnet/

MAINTAINER=	Claudio Jeker <claudio@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xi c glib gmodule m pcap pthread

MASTER_SITES=	http://www.ex-parrot.com/~chris/driftnet/

MODULES=	devel/gettext

LIB_DEPENDS=	gtk.>=1,gdk.>=1::x11/gtk+ \
		ungif.>=5::graphics/libungif \
		jpeg.>=62::graphics/jpeg

USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
