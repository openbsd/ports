# $OpenBSD: Makefile,v 1.2 2004/11/23 21:34:27 espie Exp $

COMMENT=	"library for manipulating Unicode characters and strings"

DISTNAME=	libunicode-0.4
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libunicode/0.4/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

.include <bsd.port.mk>
