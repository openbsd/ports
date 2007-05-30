# $OpenBSD: Makefile,v 1.32 2007/05/30 15:29:43 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"libraries necessary for FreeBSD compatibility"

DISTNAME=	freebsd_lib-4.11
PKGNAME=	${DISTNAME}p0
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

BASE=	${PREFIX}/emul/freebsd
TRUEBASE=${TRUEPREFIX}/emul/freebsd

SYSTRACE_SUBST_VARS=	TRUEBASE

pre-install:
	${INSTALL_DATA_DIR} ${BASE}
	${INSTALL_DATA_DIR} ${WRKINST}/emul
	@ln -sf ${TRUEBASE} ${WRKINST}/emul/freebsd

do-install:
	@zcat ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | (cd ${BASE}; pax -r)

post-install:
	@sysctl -n kern.emul.freebsd > ${WRKDIR}/.emul_freebsd
	@${SUDO} sysctl -w kern.emul.freebsd=1
	${INSTALL_DATA_DIR} ${BASE}/var/run
	-chroot ${WRKINST} ${TRUEBASE}/sbin/ldconfig -aout \
	  -f ${TRUEBASE}/var/run/ld.so.hints \
		/usr/lib/compat/aout /usr/X11R6/lib/aout
	-chroot ${WRKINST} ${TRUEBASE}/sbin/ldconfig -elf \
	  -f ${TRUEBASE}/var/run/ld-elf.so.hints \
		/usr/lib/compat /usr/X11R6/lib
	@${SUDO} sysctl -w kern.emul.freebsd=`cat ${WRKDIR}/.emul_freebsd`

.include <bsd.port.mk>
