# $OpenBSD: Makefile,v 1.3 1999/04/03 09:12:57 marc Exp $
#

DISTNAME=		enscript-1.6.1
CATEGORIES=     	print

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	enscript

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-media=Letter

post-install:
	@PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
