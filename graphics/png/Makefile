# $OpenBSD: Makefile,v 1.39 2002/05/13 23:31:24 espie Exp $

COMMENT=	"library for manipulating PNG images"

DISTNAME=	libpng-1.2.2
PKGNAME=	${DISTNAME:S/lib//}
CATEGORIES=	graphics
NEED_VERSION=	1.522
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	scripts/makefile.openbsd

REGRESS_TARGET=	test

# short term compatibility sym-links
# will be removed once all ports have been checked
# for proper operation without the sym-links
post-install:
	@cd ${PREFIX}/include && \
		ln -sf libpng/png.h png.h && \
		ln -sf libpng/pngconf.h pngconf.h

.include <bsd.port.mk>
