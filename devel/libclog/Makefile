# $OpenBSD: Makefile,v 1.19 2013/01/08 17:07:21 benoit Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-configure:
	printf "major=${LIBclog_VERSION:R}\nminor=${LIBclog_VERSION:E}\n" \
		> ${WRKSRC}/shlib_version

.include <bsd.port.mk>
