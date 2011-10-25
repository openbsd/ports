# $OpenBSD: Makefile,v 1.7 2011/10/25 18:58:06 dhill Exp $

COMMENT=	XML validation library

DISTNAME=	xmlsd-0.5.1
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	textproc devel
SHARED_LIBS=	xmlsd	1.0

HOMEPAGE=	https://opensource.conformal.com/wiki/Xmlsd
MASTER_SITES=	https://opensource.conformal.com/snapshots/xmlsd/

MAINTAINER=	David Hill <dhill@openbsd.org>

WANTLIB= 	expat

NO_REGRESS=	Yes

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

do-configure:
	printf "major=${LIBxmlsd_VERSION:R}\nminor=${LIBxmlsd_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>
