# $OpenBSD: Makefile,v 1.16 2001/05/06 01:46:29 lebel Exp $

COMMENT=	"new MH mail handling program"

DISTNAME=		nmh-1.0.4
CATEGORIES=     	mail
NEED_VERSION=	1.402
MASTER_SITES=           ftp://ftp.mhost.com/pub/nmh/ 
HOMEPAGE=		http://www.mhost.com/nmh/

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
SYSCONFDIR=		${PREFIX}/lib/nmh
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--with-krb4=/usr \
			--enable-nmh-pop

.include <bsd.port.mk>
