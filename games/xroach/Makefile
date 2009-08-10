# $OpenBSD: Makefile,v 1.21 2009/08/10 06:31:43 kili Exp $

COMMENT=	cockroaches hide under your windows

# The source code for xroach is the same under both directories
# (4.4BSD-Lite and 4.4BSD-Lite2) on the dist site.

DISTNAME=	xroach
PKGNAME=	xroach-4.4p0
CATEGORIES=	x11 games
MASTER_SITES=	${MASTER_SITES_BACKUP}
EXTRACT_SUFX=	.tar

MAINTAINER=	Michael Shalayeff <mickey@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m pthread-stubs xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/cat" BINDIR="${PREFIX}/bin" \
		BINOWN="root" BINMODE="755"

USE_X11=	Yes

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
