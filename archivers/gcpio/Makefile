# $OpenBSD: Makefile,v 1.15 2009/01/16 16:58:05 naddy Exp $

COMMENT=	GNU copy-in/out (cpio)

DISTNAME=	cpio-2.9
PKGNAME=	g${DISTNAME}p0
CATEGORIES=	archivers

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=cpio/}

MODULES=	devel/gettext
WANTLIB=	c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix="g" \
		--with-rmt=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
