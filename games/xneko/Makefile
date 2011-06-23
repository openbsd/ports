# $OpenBSD: Makefile,v 1.25 2011/06/23 22:50:27 naddy Exp $

COMMENT=	classic BSD4.4 cat-and-mouse

DISTNAME=	xneko
PKGNAME=	xneko-4.4
REVISION =	1
CATEGORIES=	x11 games
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	.tar

# Public domain - written in Japanese
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m pthread-stubs xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man" BINDIR="${PREFIX}/bin" \
		BINOWN=${BINOWN} BINMODE=${BINMODE}

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
