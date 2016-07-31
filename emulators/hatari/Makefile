# $OpenBSD: Makefile,v 1.1.1.1 2016/07/31 23:53:35 awolk Exp $

COMMENT =	Atari ST/STE/TT/Falcon emulator

V =		1.9.0
DISTNAME =	hatari-${V}
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	emulators

HOMEPAGE =	http://hatari.tuxfamily.org/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	ICE SDL SM X11 Xext c m png pthread readline termcap z

MASTER_SITES =	http://download.tuxfamily.org/hatari/$V/

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		sysutils/mtools \
		x11/gtk+3,-guic \
		x11/py-gtk2

LIB_DEPENDS =	devel/sdl \
		graphics/png

MODULES =	devel/cmake \
		lang/python

MODPY_ADJ_FILES = python-ui/*.py \
		  tools/debugger/*.py \
		  tools/hconsole/*.py \
		  tools/*.py

CONFIGURE_ARGS = -DMANDIR=${PREFIX}/man/man1

NO_TEST =	Yes

pre-configure:
	@sed -i 's,/usr/share,${PREFIX}/share,' \
		${WRKSRC}/tools/hconsole/hconsole.1

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	${PREFIX}/share/hatari/hatariui/*.py \
	${PREFIX}/share/hatari/hconsole/*.py
	gunzip ${PREFIX}/man/man1/*.1.gz

.include <bsd.port.mk>
