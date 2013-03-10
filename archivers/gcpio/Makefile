# $OpenBSD: Makefile,v 1.22 2013/03/10 22:28:04 espie Exp $

COMMENT=	GNU copy-in/out (cpio)

DISTNAME=	cpio-2.11
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers

HOMEPAGE=	http://www.gnu.org/software/cpio/

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
