# $OpenBSD: Makefile,v 1.18 2004/07/28 01:47:24 brad Exp $

COMMENT=	"Type 1 rasterizer library for UNIX/X11"

DISTNAME=	t1lib-5.0.0
CATEGORIES=	devel textproc
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# work around optimizer bug in gcc 3.3.2 (in-tree)
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	gcc-patch-* patch-*
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/ac-tools
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x

NO_REGRESS=	Yes

ALL_TARGET=	without_doc

post-patch:
	@cd ${WRKSRC}/ac-tools; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh

.include <bsd.port.mk>
