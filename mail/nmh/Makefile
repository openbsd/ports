# $OpenBSD: Makefile,v 1.21 2003/05/13 22:53:58 sturm Exp $

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

CONFIGURE_STYLE=	gnu dest old
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--with-krb4=/usr \
			--enable-nmh-pop \
			--sysconfdir='$${${DESTDIRNAME}}${PREFIX}/lib/nmh'

NO_REGRESS=		Yes

.include <bsd.port.mk>
