# $OpenBSD: Makefile,v 1.4 2017/12/07 13:12:44 espie Exp $

COMMENT=	filter files for IP address matches

# note there's also a "grepcidr-2" fork; this port is for the original
# version which is still developed by the original author.
DISTNAME=	grepcidr-2.0

CATEGORIES=	textproc net

HOMEPAGE=	http://www.pc-tools.net/unix/grepcidr/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>
FIX_EXTRACT_PERMISSIONS=Yes

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://www.pc-tools.net/files/unix/

MAKE_FLAGS=	CFLAGS="${CFLAGS}"
FAKE_FLAGS=	MANDIR="${PREFIX}/man"

NO_TEST=	Yes

.include <bsd.port.mk>
