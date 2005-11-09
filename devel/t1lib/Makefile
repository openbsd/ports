# $OpenBSD: Makefile,v 1.20 2005/11/09 21:10:48 brad Exp $

COMMENT=	"Type 1 rasterizer library for UNIX/X11"

DISTNAME=	t1lib-5.1.0
CATEGORIES=	devel textproc
MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/ \
		${MASTER_SITE_BACKUP}

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

# work around optimizer bug in gcc 3.3.5 (in-tree)
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	gcc-patch-* patch-*
.endif

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/ac-tools
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x

NO_REGRESS=	Yes

ALL_TARGET=	without_doc

.include <bsd.port.mk>
