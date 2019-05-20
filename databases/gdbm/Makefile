# $OpenBSD: Makefile,v 1.46 2019/05/20 22:15:02 naddy Exp $

COMMENT=		GNU dbm

DISTNAME=		gdbm-1.18.1
CATEGORIES=		databases
REVISION=		0

SHARED_LIBS=		gdbm	5.1	# 5.0

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/gettext,-runtime

WANTLIB=		c curses iconv intl readline

CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
