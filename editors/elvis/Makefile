# $OpenBSD: Makefile,v 1.11 2006/02/07 10:18:51 espie Exp $

COMMENT=	"clone of the ex/vi text editor"

DISTNAME=	elvis-2.1_4
PKGNAME=	${DISTNAME:S/_/./}p1
CATEGORIES=	editors
HOMEPAGE=	http://www.fh-wedel.de/elvis/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

MASTER_SITES=	ftp://ftp.cs.pdx.edu/pub/elvis/ \
		ftp://ftp.fh-wedel.de/pub/elvis/

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--bindir=${PREFIX}/bin --datadir=${PREFIX}/share/elvis
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --with-x=no
.else
CONFIGURE_ARGS+= --with-x --x-includes=${X11BASE}/include \
		 --x-libraries=${X11BASE}/lib
USE_X11=	Yes
WANTLIB+=	X11
.endif

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/elvis
	${INSTALL_DATA} ${WRKSRC}/lib/* ${PREFIX}/share/elvis
.for prog in elvis elvtags ref
	${INSTALL_PROGRAM} ${WRKSRC}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lib/${prog}.man ${PREFIX}/man/man1/${prog}.1
	rm -f ${PREFIX}/share/elvis/${prog}.man
.endfor

.include <bsd.port.mk>
