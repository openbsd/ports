# $OpenBSD: Makefile,v 1.26 2003/10/26 23:49:36 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"libraries necessary for FreeBSD compatibility"

DISTNAME=	freebsd_lib-4.0
CATEGORIES=	emulators
MASTER_SITES=	ftp://openbsd.comstyle.com/pub/brad/source/
EXTRACT_ONLY=

HOMEPAGE=	http://www.freebsd.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX?=	${LOCALBASE}/emul/freebsd

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}
	${INSTALL_DATA_DIR} ${WRKINST}/emul
	@ln -sf ${TRUEPREFIX} ${WRKINST}/emul/freebsd

do-install:
	@zcat ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | (cd ${PREFIX}; pax -r)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/var/run
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig -aout \
	  -f ${TRUEPREFIX}/var/run/ld.so.hints \
		/usr/lib/compat/aout /usr/X11R6/lib/aout
	-chroot ${WRKINST} ${TRUEPREFIX}/sbin/ldconfig -elf \
	  -f ${TRUEPREFIX}/var/run/ld-elf.so.hints \
		/usr/lib/compat /usr/X11R6/lib

.include <bsd.port.mk>
