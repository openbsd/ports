# $OpenBSD: Makefile,v 1.13 2000/10/22 15:42:33 espie Exp $

DISTNAME=		nmh-1.0.4
CATEGORIES=     	mail
NEED_VERSION=		1.305

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES= 		ftp://ftp.mhost.com/pub/nmh/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--sysconfdir='$${prefix}/lib/nmh' \
			--with-krb4=/usr \
			--enable-nmh-pop

.include <bsd.port.mk>
