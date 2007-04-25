# $OpenBSD: Makefile,v 1.2 2007/04/25 15:04:21 espie Exp $

COMMENT=	'gui for sqlite'
CATEGORIES=	databases x11

DISTNAME=	sqliteman-0.99-20070421
PKGNAME=	sqliteman-0.99.20070421
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqliteman/}
HOMEPAGE=http://sourceforge.net/projects/sqliteman/

WRKDIST=	${WRKDIR}/sqliteman-0.99

#GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/cmake
CONFIGURE_STYLE=cmake
SEPARATE_BUILD=	simple

LIB_DEPENDS=	QtCore,QtGui,QtSql::x11/qt4
RUN_DEPENDS=	::x11/qt4,-sqlite

WANTLIB += ICE SM X11 Xcursor Xext Xi Xinerama Xrandr Xrender
WANTLIB += c fontconfig freetype m pthread stdc++ z png

NO_REGRESS=	Yes

.include <bsd.port.mk>
