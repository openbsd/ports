# $OpenBSD: Makefile,v 1.18 2001/10/28 13:05:44 espie Exp $

COMMENT=	"create & extract files from DOS .ARC files"

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
NEED_VERSION=	1.384
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

WRKDIST=	${WRKDIR}
NO_REGRESS=	Yes

.include <bsd.port.mk>
