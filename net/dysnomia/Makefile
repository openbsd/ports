# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:46 espie Exp $

CATEGORIES = 	net audio www
COMMENT = 	interface to the deezer on-demand music system
HOMEPAGE = 	http://dysnomia-project.org/
MASTER_SITES = 	${HOMEPAGE}

DISTNAME = 	dysnomia-en-0.3.4
REVISION=	1
EXTRACT_SUFX = 	.tgz

# GPLv2 or later
PERMIT_PACKAGE_CDROM = Yes

LIB_DEPENDS = 	x11/wxWidgets \
		net/curl

WANTLIB = c curl m pthread stdc++ wx_base wx_base_net wx_base_odbc \
	wx_base_xml wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid \
	wx_gtk2_html wx_gtk2_qa wx_gtk2_xrc wx_gtk2_richtext

MAKE_FLAGS = \
	LIBS="$(CXXFLAGS) `wx-config --libs` -L${LOCALBASE}/lib -lcurl" \
	CXXFLAGS="`wx-config --cxxflags` $(CXXFLAGS) -Wall"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dysnomia ${PREFIX}/bin

.include <bsd.port.mk>
