# $OpenBSD: Makefile,v 1.11 2000/02/11 00:37:32 espie Exp $

DISTNAME=	bind-openbsd-8.2.2-P6-19991217
PKGNAME=	bind-8.2.2-P6
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.gsnig.net/pub/openbsd-bind/ \
		ftp://ftp.sekure.net/pub/gsnig/openbsd-bind/
NEED_VERSION=	1.191

MAINTAINER=	ho@openbsd.org,jakob@openbsd.org

WRKDIST=		${WRKDIR}/named
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

