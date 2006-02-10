# $OpenBSD: Makefile,v 1.15 2006/02/10 09:20:28 steven Exp $

COMMENT=	"blow holes through windows"

DISTNAME=	blast-1.0-src-11.00
PKGNAME=	blast-1.0
CATEGORIES=	x11

MASTER_SITES=	http://hpux.connect.org.uk/ftp/hpux/X11/Demos/blast-1.0/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c

USE_X11=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

do-build:
	cd ${WRKSRC} && ${CC} blast.c -I${X11BASE}/include ${CFLAGS} -L$(X11BASE)/lib -lX11 -lXext -o blast

NO_REGRESS=	Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/blast $(PREFIX)/bin/blast
	$(INSTALL_MAN) $(WRKSRC)/blast.man $(PREFIX)/man/man1/blast.1

.include <bsd.port.mk>
