# $OpenBSD: Makefile,v 1.24 2004/11/21 12:50:32 espie Exp $

COMMENT=	"create & extract files from DOS .ARC files"

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z
WANTLIB=	c

# Restrictive
PERMIT_PACKAGE_CDROM=	"no modifications"
PERMIT_PACKAGE_FTP=	"no modifications"
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

WRKDIST=	${WRKDIR}
NO_REGRESS=	Yes

.include <bsd.port.mk>
