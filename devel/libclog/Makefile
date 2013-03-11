# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:09 espie Exp $

COMMENT=		configurable logging library

DISTNAME=		clog-0.6.3
PKGNAME=		lib${DISTNAME}
CATEGORIES=		devel
SHARED_LIBS=		clog 1.6

HOMEPAGE=		http://opensource.conformal.com/wiki/Copious_Logger
MASTER_SITES=		http://opensource.conformal.com/snapshots/clog/

MAINTAINER =		David Hill <dhill@mindcry.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

do-configure:
	printf "major=${LIBclog_VERSION:R}\nminor=${LIBclog_VERSION:E}\n" \
		> ${WRKSRC}/shlib_version

.include <bsd.port.mk>
