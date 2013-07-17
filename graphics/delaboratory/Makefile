# $OpenBSD: Makefile,v 1.2 2013/07/17 17:08:38 bcallah Exp $

COMMENT =	color correction utility for digital images
DISTNAME =	delaboratory-0.8
CATEGORIES =	graphics x11
REVISION =	0

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

RUN_DEPENDS =	graphics/dcraw

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="${CXX}" OPTFLAGS="${CXXFLAGS}"

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,-Ofast,,g" ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/delaboratory ${PREFIX}/bin

.include <bsd.port.mk>
