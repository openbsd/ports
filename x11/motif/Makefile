# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:17 sthen Exp $

COMMENT=	Motif toolkit

DISTNAME=	motif-2.3.8

SHARED_LIBS +=  Xm                   6.1      # 4.4
SHARED_LIBS +=  Mrm                  4.1      # 4.4
SHARED_LIBS +=  Uil                  5.0      # 4.4

CATEGORIES=	x11
HOMEPAGE=	http://motif.ics.com/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=motif/}

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xext Xft Xmu Xrender Xt c expat fontconfig \
		freetype iconv jpeg m png xcb z

LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/png

USE_GROFF=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-themes \
		--enable-xft \
		--enable-jpeg \
		--disable-printing \
		--enable-png
CONFIGURE_ENV=	CPPFLAGS='-I${X11BASE}/include -I${LOCALBASE}/include \
		    -DRGB_TXT="\"${X11BASE}/share/X11/rgb.txt\""' \
		LDFLAGS='-L${LOCALBASE}/lib'

post-install:
# fix sections
	cd ${PREFIX}/man/man1 && sed -i '/^\.TH/s|user cmd|1|' *.1
	cd ${PREFIX}/man/man3 && sed -i '/^\.TH/s|library call|3|' *.3
	cd ${PREFIX}/man/man4 && sed -i '/^\.TH/s|special file|5|' *.4
	cd ${PREFIX}/man/man5 && sed -i '/^\.TH/s|file formats|5|' *.5
	mv ${PREFIX}/man/man4/mwmrc.4 ${PREFIX}/man/man5/mwmrc.5
# demo programs
	mv ${PREFIX}/share/Xm ${PREFIX}/lib/Xm
	mv ${PREFIX}/man/manm/exm_in_c.man ${PREFIX}/lib/Xm/Exm/app_in_c/
	mv ${PREFIX}/man/manm/simpleDemo.man ${PREFIX}/lib/Xm/Exm/simple_app/
	rmdir ${PREFIX}/man/manm

.include <bsd.port.mk>
