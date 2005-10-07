#	$OpenBSD: Makefile,v 1.2 2005/10/07 21:36:04 matthieu Exp $

COMMENT=	"Sample X Compositing Manager"

DISTNAME=	xcompmgr-1.1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

MASTER_SITES=	http://freedesktop.org/xapps/release/

HOMEPAGE=	http://www.freedesktop.org/Software/xapps

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xcomposite Xext Xdamage Xfixes Xrender X11 m c

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59

USE_X11=		Yes

SEPARATE_BUILD=		simple

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

.include <bsd.port.mk>
