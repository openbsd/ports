# $OpenBSD: Makefile,v 1.10 2000/02/17 17:48:29 brad Exp $

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/ \
		ftp://ftp.quorus.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

NEED_VERSION=	1.195

MAINTAINER=     ports@openbsd.org

LICENSE_TYPE=	NOFEE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
