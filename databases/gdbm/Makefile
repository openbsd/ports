# $OpenBSD: Makefile,v 1.32 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=		GNU dbm

VERSION=		1.10
DISTNAME=		gdbm-${VERSION}
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.0      # 4.0

HOMEPAGE=		http://www.gnu.org/software/gdbm/

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
