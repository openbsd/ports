# $OpenBSD: Makefile,v 1.1.1.1 2001/06/03 20:07:17 lebel Exp $

COMMENT=	"an open source client for Windows Terminal Server"

DISTNAME=	rdesktop-1.0.0
PATCHLEVEL=	19.6.4
PKGNAME=	${DISTNAME}.p${PATCHLEVEL}
CATEGORIES=	x11 net
NEED_VERSION=	1.414

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.rdesktop.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= rdesktop

MASTER_SITES0=	http://bibl4.oru.se/projects/rdesktop/
PATCHFILES=	rdesktop-unified-patch${PATCHLEVEL:S/./-/g}.bz2:0
PATCH_DIST_STRIP= -p2

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_GMAKE=	Yes
USE_X11=	Yes
LIB_DEPENDS=	gmp.4.1::devel/gmp

ALL_TARGET=	rdesktop
MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lgmp -lX11 \
			-lcrypto"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rdesktop ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rdesktop.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
