# $OpenBSD: Makefile,v 1.6 2001/12/09 11:00:21 reinhard Exp $

COMMENT=	"graphical CVS front-end using QT2"

# pthread
NOT_FOR_ARCHS=sparc

V=		0.4.90
DISTNAME=	lincvs-${V}-0-generic-src
PKGNAME=	lincvs-${V}
CATEGORIES=	devel
NEED_VERSION=	1.500

HOMEPAGE=	http://www.lincvs.org

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://lincvs.sunsite.dk/download/${PKGNAME}/
EXTRACT_SUFX=	.tgz

USE_GMAKE=	Yes
USE_X11=	Yes

MODULES=	qt2
LIB_DEPENDS=	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		mng.1::graphics/libmng
BUILD_DEPENDS=	::x11/qt2-designer

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=--datadir=${LOCALBASE}/share/doc
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
