# $OpenBSD: Makefile,v 1.5 2019/07/14 17:18:35 ajacoutot Exp $

COMMENT=		directory content watcher daemon

DISTNAME=		direvent-5.2

CATEGORIES=		sysutils

HOMEPAGE=		https://www.gnu.org.ua/software/direvent/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=direvent/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

USE_GMAKE=		Yes

.include <bsd.port.mk>
