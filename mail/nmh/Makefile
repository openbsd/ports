# $OpenBSD: Makefile,v 1.18 2002/09/30 00:29:02 pvalchev Exp $

COMMENT=	"new MH mail handling program"

DISTNAME=		nmh-1.0.4
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

.include <bsd.port.mk>
