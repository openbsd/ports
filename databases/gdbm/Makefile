# $OpenBSD: Makefile,v 1.39 2016/06/21 18:25:36 jasper Exp $

COMMENT=		GNU dbm

VERSION=		1.12
DISTNAME=		gdbm-${VERSION}
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.1      # 4.1

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/gettext

WANTLIB +=		c iconv intl

USE_GROFF =		Yes

CONFIGURE_STYLE= 	gnu

# needed for gsort
TEST_DEPENDS +=		sysutils/coreutils

post-extract:
	sed -i 's,sort,gsort,g' ${WRKSRC}/tests/testsuite

.include <bsd.port.mk>
