# $OpenBSD: Makefile,v 1.2 2000/02/10 23:14:30 espie Exp $

DISTNAME=	freebsd_lib-2.2.8
CATEGORIES=	emulators
MASTER_SITES=	ftp://ftp.dqc.org/pub/brad/
EXTRACT_ONLY=
NEED_VERSION=	1.191

ONLY_FOR_ARCHS=	i386

MAINTAINER=	brad@openbsd.org

PREFIX=		/emul/freebsd

NO_BUILD=	yes
NO_CONFIGURE=	yes
NO_MTREE=	yes
NO_PACKAGE=	yes
NO_PATCH=	yes
WRKDIST=	${WRKDIR}

pre-install:
	@mkdir -p ${PREFIX}

do-install:
	@cd ${PREFIX} && tar -zpxf ${DISTDIR}/${DISTNAME}.tar.gz

post-install:
	@mkdir -p ${PREFIX}/var/run
	@${PREFIX}/sbin/ldconfig /usr/lib/compat /usr/X11R6/lib

.include <bsd.port.mk>
