# $OpenBSD: Makefile,v 1.17 2000/05/31 14:31:20 espie Exp $
# $FreeBSD: Makefile,v 1.2 1999/03/28 11:55:25 rse Exp $

DISTNAME=	mm-1.0.12
CATEGORIES=	devel
NEED_VERSION=	1.73
FAKE=		Yes
MASTER_SITES=	http://www.engelschall.com/sw/mm/ \
		ftp://ftp.engelschall.com/sw/mm/


MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-build:
	@${ECHO_MSG} "===>  Use 'make test' to run a quick test suite."

test:	build
	@cd ${WRKSRC} && make test

.include <bsd.port.mk>
