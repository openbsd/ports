# $OpenBSD: Makefile,v 1.6 2011/01/03 13:47:57 jasper Exp $

COMMENT =		configurable logging library
DISTNAME =		clog-0.1
PKGNAME =		lib${DISTNAME}

REVISION =		2

SHARED_LIBS =		clog 1.1

CATEGORIES =		devel

HOMEPAGE =		http://opensource.conformal.com/wiki/Copious_Logger

MAINTAINER =		Chris Kuethe <ckuethe@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://opensource.conformal.com/snapshots/clog/
EXTRACT_SUFX =		.tgz

NO_REGRESS =		Yes
MAKE_FLAGS=		PREFIX=${TRUEPREFIX}

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
EXTRA_CFLAGS=   -D__BUILTIN_HACK
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

USE_GROFF=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/clog.h ${PREFIX}/include

.include <bsd.port.mk>
