# $OpenBSD: Makefile,v 1.6 1998/12/23 23:16:17 downsj Exp $
# NetBSD: Makefile,v 1.10 1998/04/24 09:07:55 agc Exp
# FreeBSD Id: Makefile,v 1.19 1997/12/04 17:34:28 asami Exp
#

DISTNAME=		linux_lib-2.6
CATEGORIES=		emulators

ONLY_FOR_ARCHS=		i386
NO_CDROM=		"GPL: must distribute with source"
MIRROR_DISTFILE=	no


MAINTAINER=		form@OpenBSD.ORG

MASTER_SITES=		${MASTER_SITE_LOCAL}

PREFIX=			/emul/linux
NO_MTREE=		yes
NO_BUILD=		yes
NO_EXTRACT=		yes
NO_PATCH=		yes
NO_WRKDIR=		yes
NO_CONFIGURE=		yes

pre-install:
	@[ -d ${PREFIX} ] || ${MKDIR} ${PREFIX}

do-install:
	@zcat ${DISTDIR}/${DISTNAME}.tar.gz |(cd ${PREFIX}; pax -r)

post-install:
# Creating usr/local/lib to prevent linux ldconfig from scanning OpenBSD
# local libraries...
	@${MKDIR} ${PREFIX}/usr/local/lib
	${PREFIX}/sbin/ldconfig || /usr/bin/true
	-@${RMDIR} ${PREFIX}/usr/local/lib ${PREFIX}/usr/local
	${MKDIR} ${PREFIX}/usr/lib/zoneinfo
	${LN} -sf /etc/localtime ${PREFIX}/usr/lib/zoneinfo/localtime
	@${ECHO} "***"
	@${ECHO} "*** Installation complete. See compat_linux(8)"
	@${ECHO} "*** for more information."
	@${ECHO} "***"

.include <bsd.port.mk>
