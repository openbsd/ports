# $OpenBSD: Makefile,v 1.19 2010/07/24 09:15:55 steven Exp $

# Consumes more than 512MB on at least i386 when building qrc_MainRes.o
VMEM_WARNING =	Yes

COMMENT =	firewall GUI
DISTNAME =	fwbuilder-4.0.1
CATEGORIES =	net security

HOMEPAGE =	http://www.fwbuilder.org/

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

# GPLv2+
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fwbuilder/}

AUTOMAKE_VERSION =	1.9	# XXX should be 1.10
AUTOCONF_VERSION =	2.63

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		::devel/cppunit

CONFIGURE_ARGS +=	--with-docdir=${TRUEPREFIX}/share/doc/fwbuilder \
			--with-templatedir=${TRUEPREFIX}/share/fwbuilder \
			--with-qtdir=${MODQT_QTDIR} \
			--with-qmake=qmake4
MAKE_ENV +=		QMAKE=${MODQT_QTDIR}/bin/qmake \
			CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="${LDFLAGS}"

MODULES =	x11/qt4 converters/libiconv
DESTDIRNAME =	INSTALL_ROOT
LIB_DEPENDS =	::security/libfwbuilder \
		::x11/qt4
		
REGRESS_TARGET =tests
USE_X11=	Yes

WANTLIB += c m netsnmp
WANTLIB += pthread stdc++ util xml2 xslt z
WANTLIB += QtGui QtNetwork
WANTLIB += fwcompiler.>=14 fwbuilder.>=14

FAKE_FLAGS =	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_FILE="${INSTALL_DATA}"

post-patch:
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    sh autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/16x16/apps
	${INSTALL_DATA} ${WRKSRC}/src/gui/Icons/firewall_64.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/fwbuilder.png
	${INSTALL_DATA} ${WRKSRC}/src/gui/Icons/firewall_16.png \
		${PREFIX}/share/icons/hicolor/16x16/apps/fwbuilder.png

.include <bsd.port.mk>
