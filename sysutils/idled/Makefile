# $OpenBSD: Makefile,v 1.5 1999/11/14 21:08:58 brad Exp $

DISTNAME=	idled-1.16
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darkwing.com/idled/download/ \
		ftp://ftp.cs.hope.edu/pub/idled/

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	ports@openbsd.org

post-extract:
	@(cd ${WRKSRC}; make clean)

.include <bsd.port.mk>
