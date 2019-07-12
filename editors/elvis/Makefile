# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:04 sthen Exp $

COMMENT=	clone of the ex/vi text editor

DISTNAME=	elvis-2.2_0
PKGNAME=	${DISTNAME:S/_/./}
REVISION=	5
CATEGORIES=	editors
HOMEPAGE=	http://elvis.the-little-red-haired-girl.org/

# Clarified Artistic License
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

MASTER_SITES=	http://www.the-little-red-haired-girl.org/pub/elvis/

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--bindir=${PREFIX}/bin \
		--datadir=${PREFIX}/share/elvis \
		--docdir=${PREFIX}/share/doc/elvis \
		--verbose

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= --with-x=no
.else
CONFIGURE_ARGS+= --with-x \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib
CFLAGS+=	-I${X11BASE}/include/freetype2
WANTLIB+=	X11 Xft Xpm xcb
.endif

NO_TEST=	Yes

do-install:
	rm ${WRKSRC}/{doc,data}/*.orig
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
