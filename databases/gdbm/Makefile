# $OpenBSD: Makefile,v 1.13 2000/04/09 16:39:04 espie Exp $

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
FAKE=			Yes

HAS_CONFIGURE=		Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
FAKE=			Yes

post-install:
	@install-info ${PREFIX}/info/gdbm.info ${PREFIX}/info/dir

.include <bsd.port.mk>
