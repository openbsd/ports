# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:52 wilfried Exp $

DISTNAME=		ASFiles-1.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.340

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_AFTERSTEP}
MASTER_SITE_SUBDIR=	apps/ASFiles

LIB_DEPENDS=		Dnd::x11/libdnd

FAKE_FLAGS=		NORMAL_INSTALL=""

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

post-configure:
.for d in . src src/bitmaps src/pixmaps src/external src/regexp pixmaps bitmaps
	@perl -pi -e 's|^(prefix[ \t]*=).*$$|\1 \$${PREFIX}|' ${WRKSRC}/${d}/Makefile
.endfor

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/Files.ad ${PREFIX}/lib/X11/app-defaults/Files

.include <bsd.port.mk>
