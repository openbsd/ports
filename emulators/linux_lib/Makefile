# $OpenBSD: Makefile,v 1.13 1999/05/13 01:49:05 brad Exp $
# $NetBSD: Makefile,v 1.10 1998/04/24 09:07:55 agc Exp $
# $FreeBSD Id: Makefile,v 1.19 1997/12/04 17:34:28 asami Exp $

DISTNAME=	linux_lib-2.6.1
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_LOCAL}

ONLY_FOR_ARCHS=	i386
NO_CDROM=	"GPL: must distribute with source"

MAINTAINER=	brad@openbsd.org

PREFIX=		/emul/linux
NO_MTREE=	yes
NO_BUILD=	yes
NO_PATCH=	yes
NO_WRKDIR=	yes
NO_CONFIGURE=	yes
NO_PACKAGE=	yes

do-extract:
	@: do nothing, we just want to make sure the port is fetched

pre-install:
	@[ -d ${PREFIX} ] || ${MKDIR} ${PREFIX}

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz | (cd ${PREFIX}; pax -r)

post-install:
# Creating usr/local/lib to prevent linux ldconfig from scanning OpenBSD
# local libraries...
	@${MKDIR} ${PREFIX}/usr/local/lib
	${PREFIX}/sbin/ldconfig || /usr/bin/true
	-@${RMDIR} ${PREFIX}/usr/local/lib ${PREFIX}/usr/local
	${MKDIR} ${PREFIX}/usr/lib/zoneinfo
	${LN} -sf /etc/localtime ${PREFIX}/usr/lib/zoneinfo/localtime
	${MKDIR} ${PREFIX}/dev
	${LN} -sf /dev/console ${PREFIX}/dev/tty0
	${LN} -sf /dev/ttyv0 ${PREFIX}/dev/tty1
	${LN} -sf /dev/ttyv1 ${PREFIX}/dev/tty2
	${LN} -sf /dev/ttyv2 ${PREFIX}/dev/tty3
	${LN} -sf /dev/ttyv3 ${PREFIX}/dev/tty4
	${LN} -sf /dev/dsp ${PREFIX}/dev/sound0
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
