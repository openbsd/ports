# $OpenBSD: Makefile,v 1.24 2005/01/02 12:56:05 alek Exp $

COMMENT=	"new MH mail handling program"

DISTNAME=		nmh-1.0.4
PKGNAME=		${DISTNAME}p1
CATEGORIES=     	mail
MASTER_SITES=           ftp://ftp.mhost.com/pub/nmh/ 
HOMEPAGE=		http://www.nongnu.org/nmh/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

CONFIGURE_STYLE=	gnu dest old
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--enable-nmh-pop \
			--sysconfdir='$${${DESTDIRNAME}}${PREFIX}/lib/nmh'

NO_REGRESS=		Yes

.include <bsd.port.mk>
