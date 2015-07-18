# $OpenBSD: Makefile,v 1.36 2015/07/18 21:11:18 jasper Exp $

COMMENT=		GNU dbm

VERSION=		1.11
REVISION=		0
DISTNAME=		gdbm-${VERSION}
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.1      # 4.1

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB +=		c

USE_GROFF =		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

# needed for gsort
TEST_DEPENDS +=		sysutils/coreutils

post-extract:
	sed -i 's,sort,gsort,g' ${WRKSRC}/tests/testsuite

.include <bsd.port.mk>
