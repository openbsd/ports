# $OpenBSD: Makefile,v 1.1.1.1 2001/10/24 17:08:38 shell Exp $

COMMENT=	"tool for managing library compile/link flags"

VERSION=	0.8.0
DISTNAME=	pkgconfig-${VERSION}

CATEGORIES=	devel
NEED_VERSION=	1.482

HOMEPAGE=	http://www.freedesktop.org/software/pkgconfig/

MASTER_SITES=	${HOMEPAGE}/releases/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	pthread.14:pth-1.4.*:devel/pth

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/pth" \
		LDFLAGS="-L${LOCALBASE}/lib/pth"


.include <bsd.port.mk>
