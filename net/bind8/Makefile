# $OpenBSD: Makefile,v 1.25 2002/03/21 21:09:19 espie Exp $

COMMENT=	Berkeley Internet Name Daemon

DISTNAME=	bind-openbsd-8.2.5-20011006
PKGNAME=	bind-8.2.5
CATEGORIES=	net
NEED_VERSION=	1.515

MASTER_SITES=	ftp://ftp.gsnig.org/pub/openbsd-bind/ \
		ftp://ftp.sekure.net/pub/gsnig/openbsd-bind/

MAINTAINER=	Hakan Olsson <ho@openbsd.org>, Jakob Schlyter <jakob@openbsd.org>

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=        -O0
.endif

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
