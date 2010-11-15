# $OpenBSD: Makefile,v 1.10 2010/11/15 00:22:54 espie Exp $

COMMENT=	graphical interface to sqlite databases
DISTNAME=	sqlitebrowser-1.3
REVISION =	3
DISTFILES=	${DISTNAME}-src.tar.gz
WRKDIST=	${WRKDIR}/sqlitebrowser
CATEGORIES=	databases x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqlitebrowser/}
HOMEPAGE=	http://sqlitebrowser.sourceforge.net/

MODULES=	x11/qt3
NO_REGRESS=	Yes

LIB_DEPENDS +=	databases/sqlite3
WANTLIB=	Xext m X11 c pthread pthread-stubs stdc++ xcb sqlite3

# Special: files are macintosh encoded.
post-extract:
	find ${WRKDIST} -type d -name images -prune -o -type f -print|xargs perl -pi.bak -e 's/\cM/\cJ/g';
	find ${WRKDIST} -type f -name \*.bak -print|xargs rm

do-configure:
	cd ${WRKDIST} && qmake sqlitedbbrowser.pro

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sqlitebrowser/sqlitebrowser ${PREFIX}/bin

# Public domain
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

.include <bsd.port.mk>
