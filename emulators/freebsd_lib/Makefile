# $OpenBSD: Makefile,v 1.9 2000/04/16 00:29:06 turan Exp $

BROKEN=		horrible bug.  clobbers ld.so.hints.

DISTNAME=	freebsd_lib-2.2.8
CATEGORIES=	emulators
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=	ftp://ftp.dqc.org/pub/brad/
EXTRACT_ONLY=


ONLY_FOR_ARCHS=	i386

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PREFIX=		/emul/freebsd

NO_BUILD=	Yes
NO_CONFIGURE=	Yes
NO_MTREE=	Yes
NO_PACKAGE=	Yes
NO_PATCH=	Yes

WRKDIST=	${WRKDIR}

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}

do-install:
	@cd ${PREFIX} && tar -zpxf ${DISTDIR}/${DISTNAME}.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/var/run
	@${PREFIX}/sbin/ldconfig /usr/lib/compat /usr/X11R6/lib

.include <bsd.port.mk>
