# $OpenBSD: Makefile,v 1.12 2016/03/18 23:12:19 naddy Exp $

COMMENT =		SSL/TLS plugin for QCA2
DISTNAME =		qca-ossl-2.0.0-beta3
PKGNAME =		${DISTNAME:S/-beta/beta/}
REVISION =		5
CATEGORIES =		security
HOMEPAGE =		http://delta.affinix.com/qca/
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto m pthread qca2 ssl stdc++

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/plugins/
EXTRACT_SUFX =		.tar.bz2


MODULES =		x11/qt4
CONFIGURE_STYLE =	qmake
LIB_DEPENDS =		security/qca2

NO_TEST =		Yes

SUBST_VARS +=		MODQT4_LIBDIR WRKINST

pre-configure:
	${SUBST_CMD} -m 444 -c ${FILESDIR}/conf.pri ${WRKSRC}/conf.pri

.include <bsd.port.mk>
