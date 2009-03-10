# $OpenBSD: Makefile,v 1.2 2009/03/10 22:21:48 espie Exp $

COMMENT=	Python MPD client library

MODPY_EGG_VERSION=0.2.0
DISTNAME=	python-mpd-${MODPY_EGG_VERSION}
PKGNAME=	py-mpd-${MODPY_EGG_VERSION}p0
CATEGORIES=	audio

HOMEPAGE=	http://www.musicpd.org/~jat/python-mpd/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pypi.python.org/packages/source/p/python-mpd/

MODULES=	lang/python

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mpd
	${INSTALL_DATA} ${WRKSRC}/doc/commands.txt \
		${PREFIX}/share/doc/py-mpd

.include <bsd.port.mk>
