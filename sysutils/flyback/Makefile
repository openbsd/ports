# $OpenBSD: Makefile,v 1.1.1.1 2008/04/14 13:39:51 jasper Exp $

COMMENT=		Time Machine-like backup tool

DISTNAME=		flyback_0.4.0
PKGNAME=		${DISTNAME:S/_/-/}
CATEGORIES=		sysutils x11

HOMEPAGE=		http://flyback-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://flyback.googlecode.com/files/

USE_X11=		Yes

MODULES=		lang/python

RUN_DEPENDS=		::databases/py-sqlite \
			::net/rsync \
			::x11/gnome/py-gnome

NO_REGRESS=		Yes
NO_BUILD=		Yes

WRKDIST= 		${WRKDIR}/flyback

pre-configure:
	@sed -e 's,!!MODPY_SITEPKG!!,${MODPY_SITEPKG},g' \
		-e 's,!!MODPY_BIN!!,${MODPY_BIN},g' \
		< ${FILESDIR}/flyback.sh > \
		${WRKSRC}/flyback
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g;' \
		-e 's,!!PREFIX!!,${PREFIX},g;' \
		-e 's,!!MODPY_BIN!!,${MODPY_BIN},g' ${WRKSRC}/*.py

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/flyback
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/flyback
	${INSTALL_SCRIPT} ${WRKSRC}/flyback ${PREFIX}/bin/flyback
	${INSTALL_DATA} ${WRKSRC}/GPL.txt ${WRKSRC}/viewer.glade \
		${PREFIX}/share/flyback
	find ${WRKSRC} -name \*.py -exec \
		${INSTALL_DATA} {} ${WRKINST}/${MODPY_SITEPKG}/flyback \;

.include <bsd.port.mk>
