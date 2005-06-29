# $OpenBSD: Makefile,v 1.1.1.1 2005/06/29 21:12:31 sturm Exp $

COMMENT=	"GNU oSIP library"

DISTNAME=	libosip2-2.2.0
CATEGORIES=	telephony devel

HOMEPAGE=	http://www.gnu.org/software/osip/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=osip/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug \
		--enable-test

.include <bsd.port.mk>
