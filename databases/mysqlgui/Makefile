# $OpenBSD: Makefile,v 1.1.1.1 2001/04/02 15:14:51 wilfried Exp $

COMMENT=		'graphical sql client for MySQL'

DISTNAME=		mysqlgui-1.7.4
CATEGORIES=		databases
NEED_VERSION=		1.380

HOMEPAGE=		http://www.mysql.com/downloads/gui-clients.html

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

BUILD_DEPENDS=		${LOCALBASE}/lib/libfltk.a::x11/fltk \
			${LOCALBASE}/lib/libflvw.a::mysqlgui/x11/flvw \
			${LOCALBASE}/lib/libfleditor.a::x11/fleditor
LIB_DEPENDS=		intl::devel/gettext \
			jpeg::graphics/jpeg \
			mysqlclient::databases/mysql \
			sqlplus::devel/mysql++

USE_X11=		Yes

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
	${INSTALL_DATA} ${WRKSRC}/doc/readme.version_1.7.4 ${PREFIX}/share/doc/mysqlgui/readme

.include <bsd.port.mk>
