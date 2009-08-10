# $OpenBSD: Makefile,v 1.15 2009/08/10 06:31:08 kili Exp $

COMMENT=	clone of the ex/vi text editor

DISTNAME=	elvis-2.2_0
PKGNAME=	${DISTNAME:S/_/./}p0
CATEGORIES=	editors
HOMEPAGE=	http://elvis.the-little-red-haired-girl.org/

# Clarified Artistic License
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
CONFIGURE_ARGS=	--bindir=${PREFIX}/bin \
		--datadir=${PREFIX}/share/elvis

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --with-x=no
.else
CONFIGURE_ARGS+= --with-x \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib
CFLAGS+=	-I${X11BASE}/include/freetype2
USE_X11=	Yes
WANTLIB+=	X11 Xft Xpm pthread-stubs xcb
.endif

NO_REGRESS=	Yes

do-install:
	@rm -f ${WRKSRC}/doc/ctags.man.orig
	${INSTALL_DATA_DIR} ${PREFIX}/share/elvis
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/elvis
.for prog in elvfmt elvis ref
	${INSTALL_PROGRAM} ${WRKSRC}/${prog} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/${prog}.man ${PREFIX}/man/man1/${prog}.1
.endfor
	${INSTALL_PROGRAM} ${WRKSRC}/elvtags ${PREFIX}/bin
	cd ${WRKSRC}/data/ && pax -rw . ${PREFIX}/share/elvis
	cd ${WRKSRC}/doc/ && pax -rw . ${PREFIX}/share/doc/elvis

.include <bsd.port.mk>
