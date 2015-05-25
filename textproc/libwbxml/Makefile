# $OpenBSD: Makefile,v 1.6 2015/05/25 09:38:03 ajacoutot Exp $

CATEGORIES =		textproc devel
COMMENT =		C library for handling WBXML documents
DISTNAME =		libwbxml-0.11.4
HOMEPAGE =		https://libwbxml.opensync.org/

SHARED_LIBS =		wbxml2			0.1	# 1.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libwbxml/}

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c expat

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/check

CONFIGURE_ARGS =	-DWBXML_LIB_VERBOSE=ON \
			-DLIBWBXML_INCLUDE_DIR=${PREFIX}/include \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
