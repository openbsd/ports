# $OpenBSD: Makefile,v 1.9 2009/08/10 06:34:29 kili Exp $

COMMENT=	steganography detection tool
DISTNAME=	stegdetect-0.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=	security graphics
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c crypto event gmodule iconv intl m \
			pthread-stubs xcb

LIB_DEPENDS=	jpeg::graphics/jpeg \
		gdk.>=1.2,gtk.>=1.2,glib.>=1.2::x11/gtk+

NO_REGRESS=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{stegdetect,stegbreak,xsteg} \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk> 
