# $OpenBSD: Makefile,v 1.12 2011/06/23 22:50:27 naddy Exp $

COMMENT=		configurable logging library

DISTNAME=		clog-0.3.4
PKGNAME=		lib${DISTNAME}
CATEGORIES=		devel
SHARED_LIBS=		clog 1.3

HOMEPAGE=		http://opensource.conformal.com/wiki/Copious_Logger
MASTER_SITES=		http://opensource.conformal.com/snapshots/clog/

MAINTAINER =		David Hill <dhill@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
EXTRA_CFLAGS=   -D__BUILTIN_HACK
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

do-configure:
	printf "major=${LIBclog_VERSION:R}\nminor=${LIBclog_VERSION:E}\n" \
		> ${WRKSRC}/shlib_version

.include <bsd.port.mk>
