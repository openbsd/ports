# $OpenBSD: Makefile,v 1.3 2004/09/15 19:26:30 espie Exp $

NOT_FOR_ARCHS=	vax

COMMENT=	"color terminal emulator with transparency and unicode support"
DISTNAME=	mlterm-2.8.0
CATEGORIES=	x11

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://mlterm.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mlterm/}
PATCHFILES=	${DISTNAME}pl1.tar.gz

USE_X11=	Yes

LIB_DEPENDS=	gtk.1.2,gdk::x11/gtk+

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-anti-alias --enable-utmp
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2"

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/script \
				${WRKSRC}/mkf/script \
				${WRKSRC}/kiklib/script

.if ${MACHINE_ARCH} == "vax" || ${MACHINE_ARCH} == "m88k"
CONFIGURE_ENV+=	"X_EXTRA_LIBS=\"/usr/X11R6/lib/libXft.a \
		/usr/X11R6/lib/libXfont.a \
                /usr/X11R6/lib/libfontconfig.a /usr/X11R6/lib/libX11.a \
                /usr/X11R6/lib/libfreetype.a /usr/X11R6/lib/libexpat.a \
                /usr/X11R6/lib/libXrender.a /usr/X11R6/lib/libXext.a\""
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mlterm
	${INSTALL_DATA} ${WRKSRC}/etc/[a-z]* ${PREFIX}/share/examples/mlterm

.include <bsd.port.mk>
