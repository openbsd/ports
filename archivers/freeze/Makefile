# $OpenBSD: Makefile,v 1.17 2003/05/24 01:09:59 jolan Exp $

COMMENT=	"FREEZE / MELT compression program - often used in QNX"

DISTNAME=	freeze-2.5
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/compression/

# None
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

CONFIGURE_STYLE= gnu dest

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."
NO_REGRESS=	Yes

.include <bsd.port.mk>
