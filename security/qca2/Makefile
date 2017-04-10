# $OpenBSD: Makefile,v 1.13 2017/04/10 11:46:33 sthen Exp $

COMMENT =	Qt Cryptographic Architecture

DISTNAME =	qca-2.0.3
PKGNAME =	qca2-2.0.3
CATEGORIES =	security
SHARED_LIBS +=	qca2	0.0
REVISION =	2

HOMEPAGE =	http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4

CONFIGURE_STYLE =	simple
CONFIGURE_ENV +=	QTDIR=${MODQT_LIBDIR} HOME=${WRKDIR} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}

MAKE_FLAGS =	LIBqca2_VERSION=${LIBqca2_VERSION}
FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}
NO_TEST =	Yes

WANTLIB += c m pthread ${LIBCXX}

.include <bsd.port.mk>
