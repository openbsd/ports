# $OpenBSD: Makefile,v 1.2 2016/07/08 08:01:48 ajacoutot Exp $

COMMENT=		directory content watcher daemon

DISTNAME=		direvent-5.1

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=direvent/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
