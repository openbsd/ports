# $OpenBSD: Makefile,v 1.7 2008/02/02 09:30:54 steven Exp $

COMMENT=	gui for sqlite
CATEGORIES=	databases x11

DISTNAME=	sqliteman-0.99-20070509
PKGNAME=	sqliteman-0.99.20070509p2
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqliteman/}
HOMEPAGE=http://sourceforge.net/projects/sqliteman/

WRKDIST=	${WRKDIR}/sqliteman-0.99

#GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender \
		iconv c fontconfig freetype m pthread stdc++ z png glib-2.0 \
		gthread-2.0

MODULES=	devel/cmake
CONFIGURE_STYLE=cmake
SEPARATE_BUILD=	simple

LIB_DEPENDS=	QtCore,QtGui,QtSql::x11/qt4
RUN_DEPENDS=	::x11/qt4,-sqlite \
		:desktop-file-utils-*:devel/desktop-file-utils


NO_REGRESS=	Yes

.include <bsd.port.mk>
