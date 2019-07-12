# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:27 sthen Exp $

COMMENT-main=	simple SMTP client
COMMENT-chroot=	simple SMTP client for chrooted web servers

V=		1.0
REVISION-main=	1
REVISION-chroot=3
DISTNAME=	femail-${V}
PKGNAME-main=	femail-${V}
PKGNAME-chroot=	femail-chroot-${V}
CATEGORIES=	mail

HOMEPAGE=	http://bulabula.org/femail/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_TEST=	Yes

MULTI_PACKAGES=	-main -chroot

PREFIX-chroot=	${VARBASE}/www
WANTLIB-main=	c

# fake WANTLIB to ensure updates occur for major changes in base
WANTLIB-chroot=	c

RUN_DEPENDS-chroot= ${BASE_PKGPATH},-main

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/femail ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/femail.8 ${PREFIX}/man/man8
	${INSTALL_PROGRAM_DIR} ${WRKINST}${PREFIX-chroot}/bin
	${INSTALL_PROGRAM_DIR} ${WRKINST}${PREFIX-chroot}/usr/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/femail-static \
		${WRKINST}${PREFIX-chroot}/bin/femail

.include <bsd.port.mk>
