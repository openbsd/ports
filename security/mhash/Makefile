# $OpenBSD: Makefile,v 1.9 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	strong hash library

DISTNAME=	mhash-0.8.13
CATEGORIES=	security

MASTER_SITES=	http://mhash.sourceforge.net/dl/

HOMEPAGE=	http://mhash.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

# XXX workaround sparc64 gcc optimization bug
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST+=	gcc-*
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
