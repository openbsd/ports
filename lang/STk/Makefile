# $OpenBSD: Makefile,v 1.4 1999/11/24 04:22:21 brad Exp $

VER=		3.1.1
DISTNAME=       STk-${VER}
CATEGORIES=	lang
MASTER_SITES=	ftp://kaolin.unice.fr/pub/STk/

NO_CDROM=	"NOFEE:	Can not sell"

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arc" || \
${MACHINE_ARCH} == "pmax" || ${MACHINE_ARCH} == "powerpc")
CONFIGURE_ARGS+= --disable-dynload
.endif

PLIST=	${WRKDIR}/PLIST

pre-install:
	@rm -f ${PLIST}
	@sed -e's:%%STK_VERSION%%:${VER}:' \
	     -e's:%%STK_ARCH%%:$(OPSYS)-$(OPSYS_VER)-$(MACHINE):' \
		${PLIST_ORIG} > ${PLIST}

.include <bsd.port.mk>

.if (defined(NO_SHARED_LIBS) && exists(${PKGDIR}/PLIST.template.noshared))
PLIST_ORIG=	${FILESDIR}/PLIST.template.noshared
.else
PLIST_ORIG=	${FILESDIR}/PLIST
.endif
