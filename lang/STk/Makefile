# $OpenBSD: Makefile,v 1.6 2000/04/29 00:02:51 turan Exp $

VER=		3.1.1
DISTNAME=       STk-${VER}
CATEGORIES=	lang
FAKE=No
MASTER_SITES=	ftp://kaolin.unice.fr/pub/STk/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
