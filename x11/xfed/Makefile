# $OpenBSD: Makefile,v 1.19 2002/10/29 19:48:59 naddy Exp $

COMMENT=	"X11 fonts (.bdf files) editor"

DISTNAME=	xfed
PKGNAME=	xfed-1.0
CATEGORIES=	x11

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
