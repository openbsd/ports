# $OpenBSD: Makefile,v 1.13 2000/06/22 19:49:43 brad Exp $

DISTNAME=	freebsd_lib-2.2.8
CATEGORIES=	emulators
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.dqc.org/pub/brad/source/
EXTRACT_ONLY=

ONLY_FOR_ARCHS=	i386

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

PREFIX=		/usr/local/emul/freebsd

pre-install:
	@mkdir -p ${PREFIX}
	@mkdir ${WRKINST}/emul
	@ln -sf ${TRUEPREFIX} ${WRKINST}/emul/freebsd

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz | (cd ${PREFIX}; pax -r)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/var/run
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig \
	 -f ${TRUEPREFIX}/var/run/ld.so.hints /usr/lib/compat /usr/X11R6/lib

.include <bsd.port.mk>
