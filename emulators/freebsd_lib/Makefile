# $OpenBSD: Makefile,v 1.1.1.1 1999/12/20 20:00:39 brad Exp $

DISTNAME=	freebsd_lib-2.2.8
CATEGORIES=	emulators
MASTER_SITES=	ftp://ftp.dqc.org/pub/brad/
EXTRACT_ONLY=

ONLY_FOR_ARCHS=	i386

MAINTAINER=	brad@openbsd.org

PREFIX=		/emul/freebsd

NO_BUILD=	yes
NO_CONFIGURE=	yes
NO_MTREE=	yes
NO_PACKAGE=	yes
NO_PATCH=	yes
NO_WRKSUBDIR=	yes

pre-install:
	@mkdir -p ${PREFIX}

do-install:
	@cd ${PREFIX} && tar -zpxf ${DISTDIR}/${DISTNAME}.tar.gz

post-install:
	@mkdir -p ${PREFIX}/var/run
	@${PREFIX}/sbin/ldconfig /usr/lib/compat /usr/X11R6/lib

.include <bsd.port.mk>
