# $OpenBSD: Makefile,v 1.13 2001/04/20 17:35:32 brad Exp $

COMMENT=	"FREEZE / MELT compression program - often used in QNX"

DISTNAME=	freeze-2.5
CATEGORIES=	archivers
NEED_VERSION=	1.384
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/unixfreeware/archive/ \
		ftp://ftp.warwick.ac.uk/pub/compression/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."

.include <bsd.port.mk>
