# $OpenBSD: Makefile,v 1.12 2000/03/24 22:11:32 espie Exp $

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
NEED_VERSION=	1.218
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/ \
		ftp://ftp.quorus.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z


MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}"

FAKE=	Yes

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
