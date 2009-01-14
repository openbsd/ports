# $OpenBSD: Makefile,v 1.37 2009/01/14 16:59:51 sturm Exp $

COMMENT=	create/update ZIP files compatible with PKZip(tm)

VERSION=	3.0
DISTNAME=	zip${VERSION:S/.//}
PKGNAME=	zip-${VERSION}
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=infozip/}

HOMEPAGE=	http://infozip.sourceforge.net/

# Conditional
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" CFLAGS_NOOPT="${CFLAGS} -I. -DUNIX"

MAKE_FILE=	unix/Makefile
ALL_TARGET=	generic
NO_REGRESS=	Yes

do-install:
.for prog in zip zipcloak zipnote zipsplit
	${INSTALL_PROGRAM} ${WRKBUILD}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/man/${prog}.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
