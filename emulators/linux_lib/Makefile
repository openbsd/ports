# $OpenBSD: Makefile,v 1.1.1.1 1998/05/07 09:20:16 form Exp $
# NetBSD: Makefile,v 1.10 1998/04/24 09:07:55 agc Exp
# FreeBSD Id: Makefile,v 1.19 1997/12/04 17:34:28 asami Exp
#

DISTNAME=		linux_lib-2.4
CATEGORIES=		emulators
MASTER_SITES=		${MASTER_SITE_LOCAL}
ONLY_FOR_ARCHS=		i386

MAINTAINER=		form@vs.itam.nsc.ru

PREFIX=			/emul/linux

# The distfile is distributed under the GPL, so no re-distribution of
# binaries without source.
MIRROR_DISTFILE=	no

NO_MTREE=		yes
NO_BUILD=		yes
EXTRACT_ONLY=		# empty
NO_WRKSUBDIR=		yes

pre-install:
	@[ -d ${PREFIX} ] || ${MKDIR} ${PREFIX}

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz |(cd ${PREFIX}; pax -r)
	@mkdir -p ${PREFIX}/usr/local
	@mkdir -p ${PREFIX}/usr/local/lib

post-install:
	${RM} ${PREFIX}/lib/libc.so.5.4.23
	${LN} -sf libc.so.5.3.12 ${PREFIX}/lib/libc.so.5
	${LN} -sf ../../lib/libc.so.5.3.12 ${PREFIX}/usr/lib/libc.so
	-${PREFIX}/sbin/ldconfig || /usr/bin/true
	${MKDIR} ${PREFIX}/usr/lib/zoneinfo
	${LN} -sf /etc/localtime ${PREFIX}/usr/lib/zoneinfo/localtime
	${MKDIR} ${PREFIX}/dev
	${LN} -sf /dev/sound ${PREFIX}/dev/dsp

.include <bsd.port.mk>
