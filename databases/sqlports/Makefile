# $OpenBSD: Makefile,v 1.10 2007/09/15 22:27:39 simon Exp $

CATEGORIES=	databases
DISTNAME=	sqlports-0.5
PKGNAME=	${DISTNAME}p0
DISTFILES=
COMMENT=	sqlite database of ports
MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DBNAME=	${WRKBUILD}/sqlports

do-build:
	cd ${PORTSDIR} && ${MAKE} dump-vars| \
	perl ${FILESDIR}/mksqlitedb ${DBNAME}

do-install:
	${INSTALL_DATA} ${DBNAME} ${PREFIX}/share

BUILD_DEPENDS=	::databases/p5-DBD-SQLite
NO_REGRESS=	Yes
NO_CHECKSUM=	Yes

.include <bsd.port.mk>
