# $OpenBSD: Makefile,v 1.1.1.1 2006/11/15 22:11:29 jasper Exp $

COMMENT=	"multi-tabbed terminal emulator"

DISTNAME=	mrxvt-0.5.2 
CATEGORIES=	x11
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		mrxvt.1${EXTRACT_SUFX}:0

HOMEPAGE=	http://materm.sourceforge.net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=materm/}
MASTER_SITES0=	http://www.obsd.fr/OpenBSD/distfiles/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
 
USE_X11=	Yes
BUILD_DEPENDS=	:bzip2-*:archivers/bzip2
LIB_DEPENDS=	jpeg.>=62.::graphics/jpeg \
		png.>=2.::graphics/png

WANTLIB=	ICE SM X11 Xext Xrender Xpm c fontconfig freetype util \
		m z Xft

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-menubar \
		--with-x \
		--enable-ttygid=utmp \
		--enable-xim \
		--enable-xft

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2 \
			-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

BZDOCS=		README.greek README.menu README.xvt behind_mrxvt.txt \
		hack-mrxvt.txt mrxvt_seq.txt rxvtRef.txt \
		xterm-ctlseqs.txt

pre-configure:
	perl -pi -e 's,undef HAVE_STDLIB_H,define HAVE_STDLIB_H,g' \
		${WRKSRC}/config.h.in

post-install:
	${INSTALL_MAN} ${WRKDIR}/mrxvt.1 \
		${PREFIX}/man/cat1
.for i in ${BZDOCS}
	@bunzip2 ${WRKSRC}/doc/${i}.bz2
	${INSTALL_DATA} ${WRKSRC}/doc/${i} \
		${PREFIX}/share/doc/mrxvt
.endfor

.include <bsd.port.mk>
