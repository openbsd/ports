# $OpenBSD: Makefile,v 1.30 2012/09/28 14:04:49 jasper Exp $

COMMENT=		GNU dbm

VERSION=		1.10
DISTNAME=		gdbm-${VERSION}
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.0      # 4.0

HOMEPAGE=		http://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

WANTLIB +=		c

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

NO_REGRESS=	Yes

.include <bsd.port.mk>
