# $OpenBSD: Makefile,v 1.1.1.1 2015/11/04 21:11:16 sthen Exp $

COMMENT =		convert HTML to PDF using Webkit

GH_ACCOUNT =		wkhtmltopdf
GH_PROJECT =		wkhtmltopdf
GH_TAGNAME =		0.12.2.4

DISTNAME =		wkhtmltopdf-${GH_TAGNAME}

SHARED_LIBS =		wkhtmltox 0.0 # 0.12

CATEGORIES =		textproc

HOMEPAGE =		http://wkhtmltopdf.org/

MAINTAINER =		Frank Groeneveld <frank@frankgroeneveld.nl>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB +=		freetype m pthread stdc++ QtCore QtGui QtNetwork
WANTLIB +=		QtSvg QtWebKit QtXmlPatterns

MODULES =		x11/qt4

MAKE_FLAGS =		LIBwkhtmltox_VERSION=${LIBwkhtmltox_VERSION}
FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}

SEPARATE_BUILD =	Yes

NO_TEST =		Yes

do-configure:
	cd ${WRKBUILD} && env -i ${CONFIGURE_ENV} qmake4 ${WRKSRC}/wkhtmltopdf.pro

.include <bsd.port.mk>
