# $OpenBSD: Makefile,v 1.8 2012/01/26 09:25:46 sebastia Exp $

COMMENT =	Qt Cryptographic Architecture
SHARED_ONLY =	Yes

DISTNAME =	qca-2.0.3
PKGNAME =	qca2-2.0.3
CATEGORIES =	security
SHARED_LIBS +=	qca2	0.0
REVISION =	1

HOMEPAGE =	http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4

CONFIGURE_STYLE =	simple
CONFIGURE_ENV +=	QTDIR=${MODQT_LIBDIR} HOME=${WRKDIR} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}

MAKE_FLAGS =	LIBqca2_VERSION=${LIBqca2_VERSION}
FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}
USE_GROFF =	Yes
NO_REGRESS =	Yes

WANTLIB += c m pthread stdc++

.include <bsd.port.mk>
