# $OpenBSD: Makefile,v 1.18 2002/03/21 21:25:56 espie Exp $

COMMENT=	"X11 fonts (.bdf files) editor"

DISTNAME=	xfed
PKGNAME=	xfed-1.0
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.demon.co.uk/pub/graphics/systems/X11.old/pub/R6untarred/contrib/programs/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	imake

# As the xfed tarball is created on the fly the checksum will always
# be incorrect; so don't bother...
#
NO_CHECKSUM=	yes

.include <bsd.port.mk>
