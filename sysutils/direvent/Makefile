# $OpenBSD: Makefile,v 1.3 2019/05/20 22:15:23 naddy Exp $

COMMENT=		directory content watcher daemon

DISTNAME=		direvent-5.1
REVISION=		0

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=direvent/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
