# $OpenBSD: Makefile,v 1.4 2006/08/01 16:22:22 espie Exp $

CATEGORIES=	databases
DISTNAME=	sqlports-0.3
DISTFILES=
COMMENT=	'sqlite database of ports'
MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DBNAME=	${WRKBUILD}/sqlports

do-build:
	cd ${PORTSDIR} && ${MAKE} dump-vars| \
	perl ${PORTSDIR}/infrastructure/package/mksqlitedb ${DBNAME}

do-install:
	${INSTALL_DATA} ${DBNAME} ${PREFIX}/share

BUILD_DEPENDS=	::databases/p5-DBD-SQLite
NO_REGRESS=	Yes

.include <bsd.port.mk>
