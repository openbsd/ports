# $OpenBSD: Makefile,v 1.14 2000/06/10 18:42:45 brad Exp $

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
NEED_VERSION=	1.301
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
