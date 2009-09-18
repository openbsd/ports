# $OpenBSD: Makefile,v 1.13 2009/09/18 10:24:50 ajacoutot Exp $

COMMENT=	common libraries and data for the MySQL GUI Suites

DISTNAME=	mysql-gui-tools-5.0r12
PKGNAME=	mysql-gui-common-5.0.6.1r12p3
CATEGORIES=	devel

HOMEPAGE=	http://www.mysql.com/products/tools/administrator/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mysql.serenitynet.com/Downloads/MySQLGUITools/

BUILD_DEPENDS=	::devel/gettext \
		:libxml->=2.6.2:textproc/libxml \
		:glib2->=2.6.2:devel/glib2 \
		::devel/libglade2 \
		::x11/gtk2mm \
		::databases/mysql \
		::devel/pcre

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-gui-common

post-install:
.for dir in source/linux \
		library/base-library/include \
		library/utilities/include \
		library/utilities/shared_include
	${INSTALL_DATA_DIR} ${PREFIX}/share/mysql-gui/common/${dir}
	${INSTALL_DATA} ${WRKSRC}/${dir}/*.h ${PREFIX}/share/mysql-gui/common/${dir}/
.endfor

.for dir in source/linux \
		library/base-library/source/.libs \
		library/mysql-resultset/source/.libs \
		library/sql-parser/source/.libs \
		library/utilities/source/.libs
	${INSTALL_DATA_DIR} ${PREFIX}/share/mysql-gui/common/${dir}
	${INSTALL_DATA} ${WRKSRC}/${dir}/*.a ${PREFIX}/share/mysql-gui/common/${dir}/
.endfor

.include <bsd.port.mk>
