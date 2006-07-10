# $OpenBSD: Makefile,v 1.1.1.1 2006/07/10 10:57:59 espie Exp $

CATEGORIES=	databases
DISTNAME=	sqlports-0.0
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
