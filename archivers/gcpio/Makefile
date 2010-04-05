# $OpenBSD: Makefile,v 1.17 2010/04/05 16:58:59 naddy Exp $

COMMENT=	GNU copy-in/out (cpio)

DISTNAME=	cpio-2.11
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers

HOMEPAGE=	http://www.gnu.org/software/cpio/

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
		--disable-silent-rules \
		--with-rmt=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
