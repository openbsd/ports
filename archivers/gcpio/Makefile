# $OpenBSD: Makefile,v 1.23 2013/11/09 23:19:01 naddy Exp $

COMMENT=	GNU copy-in/out (cpio)

DISTNAME=	cpio-2.11
PKGNAME=	g${DISTNAME}
REVISION=	0
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

.include <bsd.port.mk>
