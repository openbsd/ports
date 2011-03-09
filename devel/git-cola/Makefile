# $OpenBSD: Makefile,v 1.7 2011/03/09 18:15:23 jasper Exp $

COMMENT =	python powered git gui

MODPY_EGG_VERSION=	1.4.3.1
DISTNAME =	cola-${MODPY_EGG_VERSION}
PKGNAME =	git-${DISTNAME:S/-src//}
CATEGORIES = 	devel x11

WRKDIST =	${WRKDIR}/${DISTNAME:S/-src//}

HOMEPAGE =	http://cola.tuxfamily.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =  ${HOMEPAGE}/releases/

MODULES =	devel/gettext \
		lang/python

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils \
		devel/git \
		textproc/xxdiff \
		x11/py-qt4

MODPY_ADJ_FILES=	bin/git-cola

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/cmds.py

.include <bsd.port.mk>
