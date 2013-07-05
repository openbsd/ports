# $OpenBSD: Makefile,v 1.15 2013/07/05 07:38:47 jasper Exp $

COMMENT-main=	simple SMTP client
COMMENT-chroot=	simple SMTP client for chrooted web servers

V=		0.98
DISTNAME=	femail-${V}
PKGNAME-main=	femail-${V}
PKGNAME-chroot=	femail-chroot-${V}
CATEGORIES=	mail

REVISION-chroot=2

HOMEPAGE=	http://bulabula.org/femail/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes

MULTI_PACKAGES=	-main -chroot

PREFIX-chroot=	${VARBASE}/www
WANTLIB-main=	c

RUN_DEPENDS-chroot= ${BASE_PKGPATH},-main

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/femail ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/femail.8 ${PREFIX}/man/man8
	${INSTALL_PROGRAM_DIR} ${WRKINST}${PREFIX-chroot}/bin
	${INSTALL_PROGRAM_DIR} ${WRKINST}${PREFIX-chroot}/usr/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/femail-static \
		${WRKINST}${PREFIX-chroot}/bin/femail

.include <bsd.port.mk>
