# $OpenBSD: Makefile,v 1.23 2019/07/12 20:51:08 sthen Exp $

COMMENT=	blow holes through windows

DISTNAME=	blast-1.0
CATEGORIES=	x11
DISTFILES=	${DISTNAME}-src-11.00.tar.gz

MASTER_SITES=	http://hpux.connect.org.uk/ftp/hpux/X11/Demos/blast-1.0/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext c

do-build:
	cd ${WRKSRC} && ${CC} blast.c -I${X11BASE}/include ${CFLAGS} -L$(X11BASE)/lib -lX11 -lXext -o blast

NO_TEST=	Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/blast $(PREFIX)/bin/blast
	$(INSTALL_MAN) $(WRKSRC)/blast.man $(PREFIX)/man/man1/blast.1

.include <bsd.port.mk>
