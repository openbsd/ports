# $OpenBSD: Makefile,v 1.8 2015/07/18 22:52:43 jca Exp $

SHARED_ONLY =		Yes

COMMENT =		SSL/TLS plugin for QCA2
DISTNAME =		qca-ossl-2.0.0-beta3
PKGNAME =		${DISTNAME:S/-beta/beta/}
REVISION =		4
CATEGORIES =		security
HOMEPAGE =		http://delta.affinix.com/qca/
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto m pthread qca2 ssl stdc++

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/plugins/
EXTRACT_SUFX =		.tar.bz2


MODULES =		x11/qt4
LIB_DEPENDS =		security/qca2

NO_TEST =		Yes

QMAKE =			${LOCALBASE}/bin/qmake4
SUBST_VARS +=		MODQT4_LIBDIR WRKINST

do-configure:
	${SUBST_CMD} -c ${FILESDIR}/conf.pri ${WRKSRC}/conf.pri
	cd ${WRKSRC} && ${QMAKE} qca-ossl.pro

.include <bsd.port.mk>
