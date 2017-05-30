# $OpenBSD: Makefile,v 1.42 2017/05/30 18:07:38 jasper Exp $

COMMENT=		GNU dbm

DISTNAME=		gdbm-1.13
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
