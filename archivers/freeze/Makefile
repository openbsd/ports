# $OpenBSD: Makefile,v 1.9 2000/03/26 21:27:19 brad Exp $

DISTNAME=       freeze-2.5
CATEGORIES=	archivers
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/unixfreeware/archive/ \
		ftp://ftp.warwick.ac.uk/pub/compression/

MAINTAINER=     ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

GNU_CONFIGURE=	Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I."
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

.include <bsd.port.mk>
