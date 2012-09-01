# $OpenBSD: Makefile,v 1.18 2012/09/01 12:02:26 naddy Exp $

COMMENT=		configurable logging library

DISTNAME=		clog-0.6.2
PKGNAME=		lib${DISTNAME}
REVISION=		0
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
