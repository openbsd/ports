# $OpenBSD: Makefile,v 1.14 2017/04/10 11:46:33 sthen Exp $

COMMENT =		SSL/TLS plugin for QCA2
DISTNAME =		qca-ossl-2.0.0-beta3
PKGNAME =		${DISTNAME:S/-beta/beta/}
REVISION =		5
CATEGORIES =		security
HOMEPAGE =		http://delta.affinix.com/qca/
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto m pthread qca2 ssl ${LIBCXX}

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/plugins/
EXTRACT_SUFX =		.tar.bz2


MODULES =		devel/qmake x11/qt4
LIB_DEPENDS =		security/qca2

NO_TEST =		Yes

SUBST_VARS +=		MODQT4_LIBDIR WRKINST

pre-configure:
	${SUBST_CMD} -m 444 -c ${FILESDIR}/conf.pri ${WRKSRC}/conf.pri

.include <bsd.port.mk>
