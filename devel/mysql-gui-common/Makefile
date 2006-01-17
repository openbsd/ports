# $OpenBSD: Makefile,v 1.3 2006/01/17 09:26:19 steven Exp $

COMMENT=	"common libraries and data for the MySQL GUI Suites"

DISTNAME=	mysql-query-browser-1.1.17
PKGNAME=	mysql-gui-common-2.0.11betap0
CATEGORIES=	devel

HOMEPAGE=	http://www.mysql.com/products/tools/administrator/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://sunsite.dk/mirrors/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://gd.tuwien.ac.at/db/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://mysql.secsup.org/pub/software/mysql/Downloads/MySQLAdministrationSuite/

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::devel/gettext \
		:libxml->=2.6.2:textproc/libxml \
		:glib2->=2.6.2:devel/glib2 \
		::devel/libglade2 \
		::x11/gtk2mm \
		::databases/mysql \
		::devel/pcre

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking

WRKDIST=	${WRKDIR}/mysql-query-browser-1.1.17/mysql-gui-common

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mysql-gui/common/source/linux
	${INSTALL_DATA} ${WRKSRC}/source/linux/*.[ah] ${PREFIX}/share/mysql-gui/common/source/linux

	${INSTALL_DATA_DIR} ${PREFIX}/share/mysql-gui/common/library/include
	${INSTALL_DATA} ${WRKSRC}/library/include/* ${PREFIX}/share/mysql-gui/common/library/include

	${INSTALL_DATA_DIR} ${PREFIX}/share/mysql-gui/common/library/shared_include
	${INSTALL_DATA} ${WRKSRC}/library/shared_include/* ${PREFIX}/share/mysql-gui/common/library/shared_include

	${INSTALL_DATA_DIR} ${PREFIX}/share/mysql-gui/common/library/source/
	${INSTALL_DATA} ${WRKSRC}/library/source/libmysqlx.a ${PREFIX}/share/mysql-gui/common/library/source/

.include <bsd.port.mk>
