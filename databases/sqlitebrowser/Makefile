# $OpenBSD: Makefile,v 1.15 2013/03/11 02:52:08 espie Exp $

COMMENT=	graphical interface to sqlite databases
DISTNAME=	sqlitebrowser-1.3
REVISION=	7
DISTFILES=	${DISTNAME}-src.tar.gz
WRKDIST=	${WRKDIR}/sqlitebrowser
CATEGORIES=	databases x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqlitebrowser/}
HOMEPAGE=	http://sqlitebrowser.sourceforge.net/

MODULES=	x11/qt3
NO_TEST=	Yes

WANTLIB=	Xext m X11 c pthread stdc++ sqlite3

# Special: files are macintosh encoded.
post-extract:
	find ${WRKDIST} -type d -name images -prune -o -type f -print|xargs perl -pi.bak -e 's/\cM/\cJ/g';
	find ${WRKDIST} -type f -name \*.bak -print|xargs rm

do-configure:
	cd ${WRKDIST} && qmake sqlitedbbrowser.pro

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sqlitebrowser/sqlitebrowser ${PREFIX}/bin

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
