# $OpenBSD: Makefile,v 1.2 2015/11/02 11:56:55 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		GnuPG plugin for QCA2
DISTNAME =		qca-gnupg-2.0.0-beta3
PKGNAME =		${DISTNAME:S/-beta/beta/}
CATEGORIES =		security
HOMEPAGE =		http://delta.affinix.com/qca/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/plugins/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += m pthread qca2 stdc++

MODULES =		x11/qt4

LIB_DEPENDS =		security/qca2

RUN_DEPENDS =		security/gnupg

NO_TEST =		Yes

QMAKE =			${LOCALBASE}/bin/qmake4
SUBST_VARS +=		MODQT4_LIBDIR WRKINST

do-configure:
	${SUBST_CMD} -m 444 -c ${FILESDIR}/conf.pri ${WRKSRC}/conf.pri
	cd ${WRKSRC} && ${QMAKE} qca-gnupg.pro

.include <bsd.port.mk>
