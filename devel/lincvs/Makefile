# $OpenBSD: Makefile,v 1.18 2007/04/06 06:40:09 steven Exp $

COMMENT=	"graphical CVS front-end using QT2"

# pthread
NOT_FOR_ARCHS=	sparc

DISTNAME=	lincvs-0.4.90
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://www.lincvs.org

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext c m pthread stdc++

MASTER_SITES=	http://lincvs.sunsite.dk/download/${DISTNAME}/
EXTRACT_SUFX=	-0-generic-src.tgz

USE_GMAKE=	Yes
USE_X11=	Yes

MODULES=	x11/qt2

BUILD_DEPENDS=	::x11/qt2-designer

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--datadir=${LOCALBASE}/share/doc
CONFIGURE_ENV=	LDFLAGS="-L${MODQT_LIBDIR} -L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/auxdir

.include <bsd.port.mk>
