# $OpenBSD: Makefile,v 1.31 2006/02/12 21:34:45 brad Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"libraries necessary for FreeBSD compatibility"

DISTNAME=	freebsd_lib-4.11
CATEGORIES=	emulators
MASTER_SITES=	http://comstyle.com/source/
EXTRACT_ONLY=

HOMEPAGE=	http://www.freebsd.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX?=	${LOCALBASE}/emul/freebsd

SYSTRACE_SUBST_VARS=	TRUEPREFIX

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}
	${INSTALL_DATA_DIR} ${WRKINST}/emul
	@ln -sf ${TRUEPREFIX} ${WRKINST}/emul/freebsd

do-install:
	@zcat ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | (cd ${PREFIX}; pax -r)

post-install:
	@sysctl -n kern.emul.freebsd > ${WRKDIR}/.emul_freebsd
	@${SUDO} sysctl -w kern.emul.freebsd=1
	${INSTALL_DATA_DIR} ${PREFIX}/var/run
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig -aout \
	  -f ${TRUEPREFIX}/var/run/ld.so.hints \
		/usr/lib/compat/aout /usr/X11R6/lib/aout
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig -elf \
	  -f ${TRUEPREFIX}/var/run/ld-elf.so.hints \
		/usr/lib/compat /usr/X11R6/lib
	@${SUDO} sysctl -w kern.emul.freebsd=`cat ${WRKDIR}/.emul_freebsd`

.include <bsd.port.mk>
