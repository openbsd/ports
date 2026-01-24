BROKEN=		'_curses.window' object has no attribute 'get_wch'

COMMENT=	simple curses audio player

MODPY_DISTV=	5.4.0
DISTNAME=	cplay_ng-${MODPY_DISTV}
PKGNAME=	cplay-${MODPY_DISTV}

CATEGORIES=	audio

HOMEPAGE=	https://github.com/xi/cplay-ng

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	multimedia/mpv

post-install:
	ln -s cplay-ng ${PREFIX}/bin/cplay

.include <bsd.port.mk>
