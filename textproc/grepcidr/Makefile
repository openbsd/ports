# $OpenBSD: Makefile,v 1.5 2019/06/03 16:06:57 sthen Exp $

COMMENT=	filter files for IP address matches

# note there's also a "grepcidr-2" fork; this port is for the original
# version which is still developed by the original author.
DISTNAME=	grepcidr-2.0

CATEGORIES=	textproc net

HOMEPAGE=	http://www.pc-tools.net/unix/grepcidr/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>
FIX_EXTRACT_PERMISSIONS=Yes

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	http://www.pc-tools.net/files/unix/

MAKE_FLAGS=	CFLAGS="${CFLAGS}"
FAKE_FLAGS=	MANDIR="${PREFIX}/man"

NO_TEST=	Yes

.include <bsd.port.mk>
