# $OpenBSD: Makefile,v 1.7 2000/03/03 11:28:48 turan Exp $

BROKEN=			installs files automatically in /etc

DISTNAME=		enscript-1.6.1
CATEGORIES=     	print

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	enscript

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-media=Letter

post-install:
	@PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
