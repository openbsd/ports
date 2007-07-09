# $OpenBSD: Makefile,v 1.12 2007/07/09 17:38:42 naddy Exp $

COMMENT=	"GNU copy-in/out (cpio)"

DISTNAME=	cpio-2.9
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=cpio/}

MODULES=	gettext
WANTLIB=	c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix="g" \
		--with-rmt=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
