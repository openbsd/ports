# $OpenBSD: Makefile,v 1.24 2010/11/16 11:23:29 espie Exp $

COMMENT=	classic BSD4.4 cat-and-mouse

DISTNAME=	xneko
PKGNAME=	xneko-4.4
REVISION =	0
CATEGORIES=	x11 games
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	.tar

# Public domain - written in Japanese
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m pthread-stubs xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/cat" BINDIR="${PREFIX}/bin" \
		BINOWN=${BINOWN} BINMODE=${BINMODE}

USE_GROFF =	Yes

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
