# $OpenBSD: Makefile,v 1.7 2002/03/13 02:57:51 shell Exp $

COMMENT=	"tool for managing library compile/link flags"

VERSION=	0.12.0
DISTNAME=	pkgconfig-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.504

HOMEPAGE=	http://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=	${HOMEPAGE}releases/	\
		http://www.marcuscom.com/downloads/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/glib-1.2.8
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
