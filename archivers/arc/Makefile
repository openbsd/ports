# $OpenBSD: Makefile,v 1.8 2000/02/09 03:40:54 brad Exp $

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/ \
		ftp://ftp.quorus.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

NO_CDROM=	"NOFEE: can not sell"

MAINTAINER=     ports@openbsd.org

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
