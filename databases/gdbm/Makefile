# $OpenBSD: Makefile,v 1.38 2016/04/05 20:03:26 naddy Exp $

COMMENT=		GNU dbm

VERSION=		1.11
REVISION=		1
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
