# $OpenBSD: Makefile,v 1.24 2015/03/31 15:36:52 naddy Exp $

COMMENT=	GNU copy-in/out (cpio)

DISTNAME=	cpio-2.11
PKGNAME=	g${DISTNAME}
REVISION=	1
CATEGORIES=	archivers

HOMEPAGE=	https://www.gnu.org/software/cpio/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=cpio/}

MODULES=	devel/gettext
WANTLIB=	c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix="g" \
		--with-rmt=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

# autom4te
AUTOCONF_VERSION=2.63
TEST_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
TEST_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

.include <bsd.port.mk>
