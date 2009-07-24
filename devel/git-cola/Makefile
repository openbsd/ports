# $OpenBSD: Makefile,v 1.1.1.1 2009/07/24 14:44:29 msf Exp $

COMMENT =	python powered git gui

DISTNAME =	cola-1.3.8-src
PKGNAME =	git-${DISTNAME:S/-src//}
CATEGORIES = 	devel x11

WRKDIST =	${WRKDIR}/${DISTNAME:S/-src//}

HOMEPAGE =	http://cola.tuxfamily.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =  http://cola.tuxfamily.org/releases/

MODULES =	lang/python

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/git \
		::textproc/xxdiff \
		::x11/py-qt4

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/bin/git-cola

.include <bsd.port.mk>
