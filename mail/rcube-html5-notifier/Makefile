# $OpenBSD: Makefile,v 1.4 2021/10/20 09:00:17 sthen Exp $

COMMENT=	roundcube plugin: add HTML5 notifications for new mail

GH_ACCOUNT=	stremlau
GH_PROJECT=	html5_notifier
GH_TAGNAME=	v0.6.4
PKGNAME=	rcube-${DISTNAME}
REVISION=	0

1ATEGORIES=	mail www

# ISC
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

RUN_DEPENDS=	mail/roundcubemail>=1.1

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/html5_notifier
	cp -Rp ${WRKDIST}/* ${INSTDIR}/html5_notifier
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
