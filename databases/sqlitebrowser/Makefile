# $OpenBSD: Makefile,v 1.1.1.1 2006/05/09 15:18:28 espie Exp $

COMMENT=	"graphical interface to sqlite databases"
DISTNAME=	sqlitebrowser-1.3
DISTFILES=	${DISTNAME}-src.tar.gz
WRKDIST=	${WRKDIR}/sqlitebrowser/sqlitebrowser
CATEGORIES=	databases x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqlitebrowser/}
HOMEPAGE=	http://sqlitebrowser.sourceforge.net/

MODULES=	x11/qt3
LIB_DEPENDS=	sqlite3::databases/sqlite3
NO_REGRESS=	Yes

WANTLIB=	Xext m X11 stdc++ pthread c

# Special: files are macintosh encoded.
post-extract:
	find ${WRKDIST} -type d -name images -prune -o -type f -print|xargs perl -pi.bak -e 's/\cM/\cJ/g';
	find ${WRKDIST} -type f -name \*.bak -print|xargs rm

do-configure:
	cd ${WRKDIST} && qmake sqlitebrowser.pro

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sqlitebrowser ${PREFIX}/bin

# Public domain
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

.include <bsd.port.mk>
