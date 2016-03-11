# $OpenBSD: Makefile,v 1.37 2016/03/11 19:59:12 naddy Exp $

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

# needed for gsort
TEST_DEPENDS +=		sysutils/coreutils

post-extract:
	sed -i 's,sort,gsort,g' ${WRKSRC}/tests/testsuite

.include <bsd.port.mk>
