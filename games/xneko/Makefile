# $OpenBSD: Makefile,v 1.30 2019/07/12 20:46:27 sthen Exp $

COMMENT=	classic BSD4.4 cat-and-mouse

DISTNAME=	xneko
PKGNAME=	xneko-4.4
REVISION =	2
CATEGORIES=	x11 games
EXTRACT_SUFX=	.tar

# Public domain - written in Japanese
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 c m xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man" BINDIR="${PREFIX}/bin" \
		BINOWN=${BINOWN} BINMODE=${BINMODE}

post-extract:
	rm ${WRKSRC}/obj

.include <bsd.port.mk>
