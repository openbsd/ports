# $OpenBSD: Makefile,v 1.1.1.1 2013/07/17 16:54:10 bcallah Exp $

COMMENT =	color correction utility for digital images
DISTNAME =	delaboratory-0.8
CATEGORIES =	graphics x11

HOMEPAGE =	https://code.google.com/p/delaboratory/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread stdc++ tiff wx_base wx_base_net wx_base_odbc
WANTLIB += wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB += wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc xml2 z

MASTER_SITES =	https://delaboratory.googlecode.com/files/

MODULES =	converters/libiconv

LIB_DEPENDS =	textproc/libxml \
		x11/wxWidgets,-main

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="${CXX}" OPTFLAGS="${CXXFLAGS}"

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,-Ofast,,g" ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/delaboratory ${PREFIX}/bin

.include <bsd.port.mk>
