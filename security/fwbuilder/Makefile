# $OpenBSD: Makefile,v 1.24 2011/04/12 12:38:08 sthen Exp $

# Consumes more than 512MB on at least i386 when building qrc_MainRes.o
VMEM_WARNING =	Yes

V =		4.1.3
COMMENT =	firewall GUI
DISTNAME =	fwbuilder-$V
CATEGORIES =	net security

HOMEPAGE =	http://www.fwbuilder.org/

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>

# GPLv2+
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fwbuilder/}

AUTOMAKE_VERSION =	1.10
AUTOCONF_VERSION =	2.63

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/cppunit

CONFIGURE_ARGS +=	--with-docdir=${TRUEPREFIX}/share/doc/fwbuilder \
			--with-templatedir=${TRUEPREFIX}/share/fwbuilder \
			--with-qtdir=${MODQT_QTDIR} \
			--with-qmake=qmake4 \
			--without-distcc
MAKE_ENV +=		QMAKE=${MODQT_QTDIR}/bin/qmake \
			CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="${LDFLAGS}"

MODULES =	x11/qt4 converters/libiconv
DESTDIRNAME =	INSTALL_ROOT
LIB_DEPENDS =	libfwbuilder-$V:security/libfwbuilder \
		x11/qt4
		
REGRESS_TARGET =tests
USE_GROFF =	Yes

WANTLIB += c crypto m netsnmp
WANTLIB += pthread stdc++ util xml2 xslt z
WANTLIB += QtDBus QtGui QtNetwork QtXml
WANTLIB += fwcompiler>=14 fwbuilder>=14

FAKE_FLAGS =	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_FILE="${INSTALL_DATA}"

post-patch:
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    sh autogen.sh

post-install:
	cd ${WRKSRC}/src/res/Icons && find . -type d -mindepth 1 -maxdepth 1 | \
		while read D; do \
			${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$$D; \
			${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$$D/apps; \
		done

	cd ${WRKSRC}/src/res/Icons && find . -name '*.png' | \
		while read F; do \
			${INSTALL_DATA} $$F \
				${PREFIX}/share/icons/hicolor/`dirname $$F`/apps/`basename $$F`; \
		done

.include <bsd.port.mk>
