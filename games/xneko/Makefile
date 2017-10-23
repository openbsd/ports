# $OpenBSD: Makefile,v 1.29 2017/10/23 17:10:50 sthen Exp $

COMMENT=	classic BSD4.4 cat-and-mouse

DISTNAME=	xneko
PKGNAME=	xneko-4.4
REVISION =	2
CATEGORIES=	x11 games
EXTRACT_SUFX=	.tar

# Public domain - written in Japanese
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man" BINDIR="${PREFIX}/bin" \
		BINOWN=${BINOWN} BINMODE=${BINMODE}

post-extract:
	rm ${WRKSRC}/obj

.include <bsd.port.mk>
