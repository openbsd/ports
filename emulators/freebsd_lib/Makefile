# $OpenBSD: Makefile,v 1.17 2001/02/08 15:32:33 brad Exp $

ONLY_FOR_ARCHS=	i386

DISTNAME=	freebsd_lib-2.2.8
CATEGORIES=	emulators
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.dqc.org/pub/brad/source/
EXTRACT_ONLY=

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

PREFIX?=	${LOCALBASE}/emul/freebsd

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}
	${INSTALL_DATA_DIR} ${WRKINST}/emul
	@ln -sf ${TRUEPREFIX} ${WRKINST}/emul/freebsd

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz | (cd ${PREFIX}; pax -r)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/var/run
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig \
	 -f ${TRUEPREFIX}/var/run/ld.so.hints /usr/lib/compat /usr/X11R6/lib

.include <bsd.port.mk>
