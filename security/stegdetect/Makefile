# $OpenBSD: Makefile,v 1.5 2006/08/03 23:28:12 espie Exp $

COMMENT=	"steganography detection tool"
DISTNAME=	stegdetect-0.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security graphics
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.outguess.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c crypto event gmodule iconv intl m

LIB_DEPENDS=	gdk.>=1.2,gtk.>=1.2,glib.>=1.2::x11/gtk+

NO_REGRESS=	Yes
USE_X11=	Yes

WRKDIST=${WRKDIR}/stegdetect

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/stegbreak
	${INSTALL_DATA} ${WRKSRC}/rules.ini ${PREFIX}/share/stegbreak
	${INSTALL_PROGRAM} ${WRKSRC}/{stegdetect,stegbreak,xsteg} \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk> 
