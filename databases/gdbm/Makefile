# $OpenBSD: Makefile,v 1.33 2013/11/09 23:19:02 naddy Exp $

COMMENT=		GNU dbm

VERSION=		1.10
DISTNAME=		gdbm-${VERSION}
REVISION=		0
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.0      # 4.0

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB +=		c

USE_GROFF =		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

NO_TEST=	Yes

.include <bsd.port.mk>
