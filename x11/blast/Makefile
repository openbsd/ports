# $OpenBSD: Makefile,v 1.16 2006/11/04 19:19:15 kili Exp $

COMMENT=	"blow holes through windows"

DISTNAME=	blast-1.0
CATEGORIES=	x11
DISTFILES=	${DISTNAME}-src-11.00.tar.gz

MASTER_SITES=	http://hpux.connect.org.uk/ftp/hpux/X11/Demos/blast-1.0/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c

USE_X11=	Yes

do-build:
	cd ${WRKSRC} && ${CC} blast.c -I${X11BASE}/include ${CFLAGS} -L$(X11BASE)/lib -lX11 -lXext -o blast

NO_REGRESS=	Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/blast $(PREFIX)/bin/blast
	$(INSTALL_MAN) $(WRKSRC)/blast.man $(PREFIX)/man/man1/blast.1

.include <bsd.port.mk>
