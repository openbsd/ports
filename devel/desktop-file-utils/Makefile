# $OpenBSD: Makefile,v 1.7 2006/08/01 22:46:16 espie Exp $

COMMENT=	"utilities for 'desktop' entries"

VERSION=	0.10
DISTNAME=	desktop-file-utils-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software_2fdesktop_2dfile_2dutils

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://freedesktop.org/software/desktop-file-utils/releases/

MODULES=	devel/gettext	

LIB_DEPENDS=	glib-2.0.0.0::devel/glib2 \
		popt.>=0.3::devel/popt

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# This port has "/usr/local" hardcoded, we prefer ${LOCALBASE}
pre-build:
	perl -pi -e "s,/usr/local,${LOCALBASE},g" ${WRKSRC}/src/eggdirfuncs.c

.include <bsd.port.mk>
