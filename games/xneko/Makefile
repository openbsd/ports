# $OpenBSD: Makefile,v 1.14 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"classic BSD4.4 cat-and-mouse"

# The source code for xneko is the same under both directories
# (4.4BSD-Lite and 4.4BSD-Lite2) on the dist site.

DISTNAME=	xneko
PKGNAME=	xneko-4.4
CATEGORIES=	x11 games
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/4.4BSD-Lite/4.4BSD-Lite2/usr/src/games/
EXTRACT_SUFX=	.tar
IGNOREFILES=	xneko.tar

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
