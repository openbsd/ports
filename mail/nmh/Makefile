# $OpenBSD: Makefile,v 1.20 2002/10/27 17:21:39 naddy Exp $

COMMENT=	"new MH mail handling program"

DISTNAME=		nmh-1.0.4
PKGNAME=		${DISTNAME}p1
CATEGORIES=     	mail
MASTER_SITES=           ftp://ftp.mhost.com/pub/nmh/ 
HOMEPAGE=		http://www.mhost.com/nmh/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
SYSCONFDIR=		${PREFIX}/lib/nmh
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--with-krb4=/usr \
			--enable-nmh-pop

NO_REGRESS=		Yes

.include <bsd.port.mk>
