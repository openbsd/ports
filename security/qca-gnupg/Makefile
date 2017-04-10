# $OpenBSD: Makefile,v 1.6 2017/04/10 11:46:33 sthen Exp $

COMMENT =		GnuPG plugin for QCA2
DISTNAME =		qca-gnupg-2.0.0-beta3
PKGNAME =		${DISTNAME:S/-beta/beta/}
CATEGORIES =		security
HOMEPAGE =		http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/plugins/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += m pthread qca2 ${LIBCXX}

MODULES =		devel/qmake x11/qt4

LIB_DEPENDS =		security/qca2

RUN_DEPENDS =		security/gnupg

NO_TEST =		Yes

SUBST_VARS +=		MODQT4_LIBDIR WRKINST

pre-configure:
	${SUBST_CMD} -m 444 -c ${FILESDIR}/conf.pri ${WRKSRC}/conf.pri

.include <bsd.port.mk>
