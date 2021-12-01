# $OpenBSD: Makefile,v 1.50 2021/12/01 09:27:44 sthen Exp $

COMMENT=		GNU dbm

DISTNAME=		gdbm-1.22
CATEGORIES=		databases

SHARED_LIBS +=  gdbm                 6.0      # 6.0

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=		devel/gettext,-runtime

WANTLIB=		c curses iconv intl readline

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
