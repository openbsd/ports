# $OpenBSD: Makefile,v 1.18 2001/02/16 16:40:57 brad Exp $

ONLY_FOR_ARCHS=	i386

DISTNAME=	freebsd_lib-4.0
CATEGORIES=	emulators
NEED_VERSION=	1.336
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
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig -aout \
	  -f ${TRUEPREFIX}/var/run/ld.so.hints \
		/usr/lib/compat/aout /usr/X11R6/lib/aout
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig -elf \
	  -f ${TRUEPREFIX}/var/run/ld-elf.so.hints \
		/usr/lib/compat /usr/X11R6/lib

.include <bsd.port.mk>
