# $OpenBSD: Makefile,v 1.1.1.1 2001/03/07 15:47:04 wilfried Exp $

DISTNAME=	ASFiles-1.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	x11 x11/windowmaker
NEED_VERSION=	1.340
MASTER_SITES=	${MASTER_SITE_AFTERSTEP}
MASTER_SITE_SUBDIR=	apps/ASFiles

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

LIB_DEPENDS=	Dnd::x11/libdnd

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=	gnu
FAKE_FLAGS=	NORMAL_INSTALL=""

post-configure:
.for d in . src src/bitmaps src/pixmaps src/external src/regexp pixmaps bitmaps
	@perl -pi -e 's|^(prefix[ \t]*=).*$$|\1 \$${PREFIX}|' ${WRKSRC}/${d}/Makefile
.endfor

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/Files.ad ${PREFIX}/lib/X11/app-defaults/Files

.include <bsd.port.mk>
