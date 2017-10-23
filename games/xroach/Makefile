# $OpenBSD: Makefile,v 1.30 2017/10/23 17:10:50 sthen Exp $

COMMENT=	cockroaches hide under your windows

# The source code for xroach is the same under both directories
# (4.4BSD-Lite and 4.4BSD-Lite2) on the dist site.

DISTNAME=	xroach
PKGNAME=	xroach-4.4
REVISION =	3
CATEGORIES=	x11 games
EXTRACT_SUFX=	.tar

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m xcb

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man" BINDIR="${PREFIX}/bin" \
		BINOWN="root" BINMODE="755"

post-extract:
	rm ${WRKSRC}/obj

.include <bsd.port.mk>
