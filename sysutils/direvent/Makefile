# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:41 sthen Exp $

COMMENT=		directory content watcher daemon

DISTNAME=		direvent-5.1
REVISION=		0

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=direvent/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
