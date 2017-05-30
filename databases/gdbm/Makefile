# $OpenBSD: Makefile,v 1.41 2017/05/30 06:48:37 jasper Exp $

COMMENT=		GNU dbm

VERSION=		1.13
DISTNAME=		gdbm-${VERSION}
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.2      # 4.0

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/gettext

WANTLIB +=		c iconv intl ncurses readline

CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
