# $OpenBSD: Makefile,v 1.5 1999/10/06 18:54:48 jakob Exp $

DISTNAME=	bind-19991004-snapshot
PKGNAME=	bind-8.2.2-t4b
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.gsnig.net/pub/openbsd-bind/ \
		ftp://ftp.sekure.net/pub/gsnig/openbsd-bind/

MAINTAINER=	ho@openbsd.org,jakob@openbsd.org

WRKSRC=		${WRKDIR}/named
PREFIX=		/
NO_MTREE=	yes
NO_CONFIGURE=	yes
NO_CDROM=	"CRYPTO: Unclear status of crypto components."
RESTRICTED=	"Unclear status of crypto components."

pre-install pre-package:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL
	@cp ${WRKSRC}/etc/namedb/named.* /var/named/inst-sample

post-install:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

post-package:
	@rm -rf /var/named/inst-sample

.include <bsd.port.mk>

