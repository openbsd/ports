# $OpenBSD: Makefile,v 1.22 2003/05/24 01:43:01 jolan Exp $

COMMENT=	"create & extract files from DOS .ARC files"

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

# Restrictive
PERMIT_PACKAGE_CDROM=	"no modifications"
PERMIT_PACKAGE_FTP=	"no modifications"
PERMIT_DISTFILES_CDROM=	"source may not be sold"
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

WRKDIST=	${WRKDIR}
NO_REGRESS=	Yes

.include <bsd.port.mk>
