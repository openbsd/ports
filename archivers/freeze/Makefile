# $OpenBSD: Makefile,v 1.16 2002/12/29 15:15:18 fgsch Exp $

COMMENT=	"FREEZE / MELT compression program - often used in QNX"

DISTNAME=	freeze-2.5
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/unixfreeware/archive/ \
		ftp://ftp.warwick.ac.uk/pub/compression/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."
NO_REGRESS=	Yes

.include <bsd.port.mk>
