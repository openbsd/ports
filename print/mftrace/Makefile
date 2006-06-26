# $OpenBSD: Makefile,v 1.2 2006/06/26 05:50:58 steven Exp $

COMMENT=	"Scalable PostScript fonts for MetaFont"

CATEGORIES=	print
DISTNAME=	mftrace-1.2.4

HOMEPAGE=	http://www.xs4all.nl/~hanwen/mftrace/

MAINTAINER=	Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

MODULES=	lang/python

BUILD_DEPENDS=	:potrace-*:graphics/potrace
RUN_DEPENDS=	:potrace-*:graphics/potrace \
		:t1utils-*:print/t1utils \
		:fontforge-*:print/fontforge \
		:teTeX_base-*:print/teTeX/base

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	PYTHON=${MODPY_BIN}
MAKE_FILE=	GNUmakefile
FAKE_FLAGS=	MODPY_SITEPKG=${MODPY_SITEPKG} ${DESTDIRNAME}=${WRKINST}

NO_REGRESS=	Yes

.include <bsd.port.mk>
