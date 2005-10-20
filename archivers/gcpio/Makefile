# $OpenBSD: Makefile,v 1.10 2005/10/20 21:45:18 naddy Exp $

COMMENT=	"GNU copy-in/out (cpio)"

DISTNAME=	cpio-2.6
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers

# GPL
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

.include <bsd.port.mk>
