# $OpenBSD: Makefile,v 1.14 2000/04/21 05:04:44 kevlo Exp $

DISTNAME=	gdbm-1.8.0
CATEGORIES=	databases
NEED_VERSION=	1.73
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gdbm


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=		Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
FAKE=			Yes

post-install:
	@install-info ${PREFIX}/info/gdbm.info ${PREFIX}/info/dir

.include <bsd.port.mk>
