# $OpenBSD: Makefile,v 1.9 2011/03/22 09:45:51 ajacoutot Exp $

COMMENT-main=	simple SMTP client
COMMENT-chroot=	simple SMTP client for chrooted apache

V=		0.97
DISTNAME=	femail-${V}
PKGNAME-main=	femail-${V}
REVISION-main = 1
PKGNAME-chroot=	femail-chroot-${V}
REVISION-chroot = 3
CATEGORIES=	mail

HOMEPAGE=	http://bulabula.org/femail/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

USE_GROFF =	Yes
NO_REGRESS=	Yes

MULTI_PACKAGES=	-main -chroot

PREFIX-chroot=	/var/www
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
