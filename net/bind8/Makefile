# $OpenBSD: Makefile,v 1.14 2000/03/24 22:11:50 espie Exp $

DISTNAME=	bind-openbsd-8.2.2-P6-19991217
PKGNAME=	bind-8.2.2-P6
CATEGORIES=	net
NEED_VERSION=	1.197
MASTER_SITES=	ftp://ftp.gsnig.net/pub/openbsd-bind/ \
		ftp://ftp.sekure.net/pub/gsnig/openbsd-bind/

MAINTAINER=	ho@openbsd.org,jakob@openbsd.org

WRKDIST=	${WRKDIR}/named
PREFIX=		/
NO_MTREE=	yes
NO_CONFIGURE=	yes
SAMPLEDIR=	${DESTDIR}/usr/local/share/examples/bind8

RESTRICTED=		"Unclear status of crypto components."

PERMIT_PACKAGE_CDROM=   "Unclear status of crypto components."
PERMIT_PACKAGE_FTP=     "Unclear status of crypto components."
PERMIT_DISTFILES_CDROM= "Unclear status of crypto components."
PERMIT_DISTFILES_FTP=   "Unclear status of crypto components."

pre-install pre-package:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

post-install:
	mkdir -p ${SAMPLEDIR}
	cp ${WRKSRC}/etc/namedb/named.* ${SAMPLEDIR}
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL ${SAMPLEDIR}

.include <bsd.port.mk>

