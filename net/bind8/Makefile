# $OpenBSD: Makefile,v 1.10 1999/12/17 17:56:30 ho Exp $

DISTNAME=	bind-openbsd-8.2.2-P6-19991217
PKGNAME=	bind-8.2.2-P6
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

SAMPLEDIR=	${DESTDIR}/usr/local/share/examples/bind8

pre-install pre-package:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

post-install:
	mkdir -p ${SAMPLEDIR}
	cp ${WRKSRC}/etc/namedb/named.* ${SAMPLEDIR}
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL ${SAMPLEDIR}

.include <bsd.port.mk>

