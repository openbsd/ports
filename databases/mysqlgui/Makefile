# $OpenBSD: Makefile,v 1.11 2002/03/21 20:46:24 espie Exp $

COMMENT=		"graphical sql client for MySQL"

DISTNAME=		mysqlgui-1.7.5
CATEGORIES=		databases
NEED_VERSION=		1.515

HOMEPAGE=		http://www.mysql.com/downloads/gui-mysqlgui.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/mysqlgui/ \
			ftp://ftp.mysql.com/mysqlgui/
MASTER_SITES0=		ftp://ftp.robertk.com/pub/Source/mysqlgui/

DIST_SUBDIR=		mysqlgui

PATCHFILES=		single.cc:0

MODULES=		gettext
BUILD_DEPENDS=		:flvw->=1.0:x11/flvw
LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			fltk::x11/fltk \
			fleditor::x11/fleditor \
			lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql \
			sqlplus::devel/mysql++

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/mysqlgui-src-1.7.5

do-distpatch:
	@for f in ${PATCHFILES:C/:[0-9]$//}; do \
		cp ${FULLDISTDIR}/$$f ${WRKSRC} ; \
	done

post-extract:
	@cd ${WRKSRC}/FL && rm -f Flv_CStyle.H Flv_List.H \
		Flv_Style.H Flv_Table.H Flve_Check_Button.H \
		Flve_Combo.H Flve_Input.H math.h \
		cl01.xpm logo1.xpm mysql_do_sql.xpm

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mysqlgui ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysqlgui
	${INSTALL_DATA} ${WRKSRC}/doc/my.cnf ${PREFIX}/share/doc/mysqlgui
	${INSTALL_DATA} ${WRKSRC}/doc/readme.version_1.7.5 ${PREFIX}/share/doc/mysqlgui/readme

.include <bsd.port.mk>
