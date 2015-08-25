# $OpenBSD: Makefile,v 1.1.1.1 2015/08/25 11:54:37 ajacoutot Exp $

COMMENT=		directory content watcher daemon

DISTNAME=		direvent-5.0

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_GNU:=direvent/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
