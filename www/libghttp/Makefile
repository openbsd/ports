# $OpenBSD: Makefile,v 1.13 2002/05/15 17:58:50 espie Exp $

COMMENT=	"GNOME http client library"

DISTNAME=	libghttp-1.0.9
CATEGORIES=	www
NEED_VERSION=	1.391
MASTER_SITES=	$(MASTER_SITE_GNOME:=stable/sources/libghttp/)

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
