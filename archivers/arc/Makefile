# $OpenBSD: Makefile,v 1.9 2000/02/12 00:43:57 espie Exp $

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/ \
		ftp://ftp.quorus.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z
NEED_VERSION=	1.195

NO_CDROM=	"NOFEE: can not sell"

MAINTAINER=     ports@openbsd.org

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
