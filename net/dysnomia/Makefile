# $OpenBSD: Makefile,v 1.2 2008/02/02 09:44:18 steven Exp $

CATEGORIES = 	net audio www
COMMENT = 	interface to the deezer on-demand music system
HOMEPAGE = 	http://dysnomia-project.org/
MASTER_SITES = 	${HOMEPAGE}

DISTNAME = 	dysnomia-en-0.3.4
PKGNAME =	${DISTNAME}p0
EXTRACT_SUFX = 	.tgz

# GPLv2 or later
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes

LIB_DEPENDS = 	wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_aui,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_xrc,wx_gtk2_richtext::x11/wxWidgets \
		curl::net/curl
WANTLIB = c m pthread stdc++

MAKE_FLAGS = \
	LIBS="$(CXXFLAGS) `wx-config --libs` -L${LOCALBASE}/lib -lcurl" \
	CXXFLAGS="`wx-config --cxxflags` $(CXXFLAGS) -Wall"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dysnomia ${PREFIX}/bin

.include <bsd.port.mk>
