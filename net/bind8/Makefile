# $OpenBSD: Makefile,v 1.18 2000/07/17 19:21:48 espie Exp $

DISTNAME=	bind-openbsd-8.2.2-P6-19991217
PKGNAME=	bind-8.2.2-P6
CATEGORIES=	net
NEED_VERSION=	1.317
MASTER_SITES=	ftp://ftp.gsnig.org/pub/openbsd-bind/ \
		ftp://ftp.sekure.net/pub/gsnig/openbsd-bind/

MAINTAINER=	ho@openbsd.org,jakob@openbsd.org

WRKDIST=	${WRKDIR}/named
PREFIX=		/
SAMPLEDIR=	${DESTDIR}/usr/local/share/examples/bind8

RESTRICTED=		"Unclear status of crypto components."

PERMIT_PACKAGE_CDROM=   "Unclear status of crypto components."
PERMIT_PACKAGE_FTP=     "Unclear status of crypto components."
PERMIT_DISTFILES_CDROM= "Unclear status of crypto components."
PERMIT_DISTFILES_FTP=   "Unclear status of crypto components."

pre-install:
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL

post-install:
	mkdir -p ${SAMPLEDIR}
	cp ${WRKSRC}/etc/namedb/named.* ${SAMPLEDIR}

pre-fake:
	@mkdir -p ${WRKINST}/usr/share/man/cat{1,5,8} ${WRKINST}/usr/share/misc 
	@mkdir -p ${WRKINST}/usr/sbin ${WRKINST}/usr/libexec

.include <bsd.port.mk>
