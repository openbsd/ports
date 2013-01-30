# $OpenBSD: Makefile,v 1.3 2013/01/30 11:08:28 zhuk Exp $

CATEGORIES =		textproc devel
COMMENT =		C library for handling WBXML documents
DISTNAME =		libwbxml-0.11.2
HOMEPAGE =		https://libwbxml.opensync.org/

SHARED_LIBS =		wbxml2			0.1	# 1.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libwbxml/}

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c expat

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DCHECK_FOUND=1 \
			-DWBXML_LIB_VERBOSE=ON \
			-DLIBWBXML_INCLUDE_DIR=${PREFIX}/include

.include <bsd.port.mk>
