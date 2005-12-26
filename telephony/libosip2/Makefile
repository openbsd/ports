# $OpenBSD: Makefile,v 1.2 2005/12/26 13:13:45 steven Exp $

COMMENT=	"GNU oSIP library"

DISTNAME=	libosip2-2.2.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		osip2		3.0 \
			osipparser2	3.0
MODGNU_SHARED_LIBS=	osip2		'' \
			osipparser2	''
LIBosip2_ALIAS=		realosip2
LIBosipparser2_ALIAS=	realosipparser2

CATEGORIES=	telephony devel

HOMEPAGE=	http://www.gnu.org/software/osip/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=osip/}

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug \
		--enable-test

.include <bsd.port.mk>
