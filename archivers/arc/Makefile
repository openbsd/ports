# $OpenBSD: Makefile,v 1.11 2000/03/06 01:48:43 brad Exp $

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/ \
		ftp://ftp.quorus.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

NEED_VERSION=	1.218

MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

FAKE=	Yes

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
