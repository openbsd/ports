# $OpenBSD: Makefile,v 1.4 2002/02/19 05:04:55 shell Exp $

COMMENT=	"tool for managing library compile/link flags"

VERSION=	0.10.0
DISTNAME=	pkgconfig-${VERSION}

CATEGORIES=	devel
NEED_VERSION=	1.504

HOMEPAGE=	http://www.freedesktop.org/software/pkgconfig/

MASTER_SITES=	${HOMEPAGE}/releases/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	lib/pth/pthread.14:pth-1.4.*:devel/pth

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/glib-1.2.8
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/pth" \
		LDFLAGS="-L${LOCALBASE}/lib/pth"


.include <bsd.port.mk>
