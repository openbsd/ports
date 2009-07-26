# $OpenBSD: Makefile,v 1.3 2009/07/26 22:55:32 ajacoutot Exp $

COMMENT =	python powered git gui

MODPY_EGG_VERSION=	1.3.8
DISTNAME =	cola-${MODPY_EGG_VERSION}-src
PKGNAME =	git-${DISTNAME:S/-src//}p1
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
RUN_DEPENDS =	::devel/desktop-file-utils \
		::devel/git \
		::textproc/xxdiff \
		::x11/py-qt4

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/bin/git-cola

.include <bsd.port.mk>
