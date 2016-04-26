# $OpenBSD: Makefile,v 1.26 2016/04/26 17:47:36 naddy Exp $

COMMENT=	GNU cpio copies files to and from archives

DISTNAME=	cpio-2.12
PKGNAME=	g${DISTNAME}
REVISION=	0
CATEGORIES=	archivers
HOMEPAGE=	https://www.gnu.org/software/cpio/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=cpio/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	devel/gettext
WANTLIB=	c iconv intl

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix="g" \
		--with-rmt=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

# autom4te
AUTOCONF_VERSION=2.69
TEST_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
TEST_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

.include <bsd.port.mk>
