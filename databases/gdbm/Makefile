# $OpenBSD: Makefile,v 1.40 2017/05/08 15:44:56 schwarze Exp $

COMMENT=		GNU dbm

VERSION=		1.12
DISTNAME=		gdbm-${VERSION}
REVISION=		0
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.1      # 4.1

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/gettext

WANTLIB +=		c iconv intl

CONFIGURE_STYLE= 	gnu

# needed for gsort
TEST_DEPENDS +=		sysutils/coreutils

post-extract:
	sed -i 's,sort,gsort,g' ${WRKSRC}/tests/testsuite

.include <bsd.port.mk>
