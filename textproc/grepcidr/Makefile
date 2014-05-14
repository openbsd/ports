# $OpenBSD: Makefile,v 1.1.1.1 2014/05/14 10:06:20 sthen Exp $

COMMENT=	filter files for IP address matches

DISTNAME=	grepcidr-1.4

CATEGORIES=	textproc net

HOMEPAGE=	http://www.pc-tools.net/unix/grepcidr/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://www.pc-tools.net/files/unix/

MAKE_FLAGS=	CFLAGS="${CFLAGS}"
FAKE_FLAGS=	MANDIR="${PREFIX}/man"

NO_TEST=	Yes

.include <bsd.port.mk>
