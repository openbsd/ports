# $OpenBSD: Makefile,v 1.16 2002/03/21 20:57:08 espie Exp $

COMMENT=	"Mr Do video arcade game for X11"

DISTNAME=	xmris.4.04
PKGNAME=	xmris-4.04
CATEGORIES=	games
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	yes
CONFIGURE_STYLE=imake
MAKE_FLAGS=	XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults \
	OWNER='-o bin' \
	INSTSCOREFLAGS='-o bin -m 777' \
	INSTMRISFLAGS= '-o bin -m 711' \
	CDEBUGFLAGS='${CFLAGS}' MANSUFFIX=6 \
	LOCAL=${PREFIX}

# Must override target, as `all' is a file
ALL_TARGET=	xmris xmred xmris.0 xmred.0

FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

.include <bsd.port.mk>
