# $OpenBSD: Makefile,v 1.15 2003/01/06 00:18:45 pvalchev Exp $

COMMENT=	"classic BSD4.4 cat-and-mouse"

DISTNAME=	xneko
PKGNAME=	xneko-4.4
CATEGORIES=	x11 games
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	.tar
IGNOREFILES=	xneko.tar

# Public domain - written in Japanese
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	MANDIR="${PREFIX}/man/cat" BINDIR="${PREFIX}/bin" \
		DESTDIR="${WRKINST}" BINOWN="root" BINMODE="755"

USE_X11=	Yes

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
