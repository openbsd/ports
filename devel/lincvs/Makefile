# $OpenBSD: Makefile,v 1.7 2001/12/13 18:01:48 naddy Exp $

COMMENT=	"graphical CVS front-end using QT2"

# pthread
NOT_FOR_ARCHS=	sparc

DISTNAME=	lincvs-0.4.90
CATEGORIES=	devel
NEED_VERSION=	1.500

HOMEPAGE=	http://www.lincvs.org

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://lincvs.sunsite.dk/download/${DISTNAME}/
EXTRACT_SUFX=	-0-generic-src.tgz

USE_GMAKE=	Yes
USE_X11=	Yes

MODULES=	qt2
BUILD_DEPENDS=	::x11/qt2-designer

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--datadir=${LOCALBASE}/share/doc
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
