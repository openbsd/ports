# $OpenBSD: Makefile,v 1.12 2000/04/17 16:22:46 dugsong Exp $

DISTNAME=		nmh-1.0.4
CATEGORIES=     	mail

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES= 		ftp://ftp.mhost.com/pub/nmh/

HAS_CONFIGURE=		yes
CONFIGURE_ARGS=		--prefix='$$(DESTDIR)$(PREFIX)' \
			--libdir='$${exec_prefix}/libexec' \
			--sysconfdir='$${prefix}/lib/nmh' \
			--with-krb4=/usr \
			--enable-nmh-pop

FAKE=			yes

.include <bsd.port.mk>
