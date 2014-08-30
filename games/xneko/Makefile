# $OpenBSD: Makefile,v 1.27 2014/08/30 21:54:08 jasper Exp $

COMMENT=	classic BSD4.4 cat-and-mouse

DISTNAME=	xneko
PKGNAME=	xneko-4.4
REVISION =	1
CATEGORIES=	x11 games
EXTRACT_SUFX=	.tar

# Public domain - written in Japanese
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m pthread-stubs xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man" BINDIR="${PREFIX}/bin" \
		BINOWN=${BINOWN} BINMODE=${BINMODE}

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
