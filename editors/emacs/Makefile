# New ports collection makefile for:	GNU emacs
# Version required:	20.2
# Date created:		14 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.4 1998/03/29 07:35:28 marc Exp $
#

DISTNAME=	emacs-20.2
CATEGORIES=	editors
MASTER_SITES=	ftp://prep.ai.mit.edu/pub/gnu/

MAINTAINER=	ports@OpenBSD.ORG

WRKSRC=		${WRKDIR}/emacs-20.2
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.if ${MACHINE} == "arc" || ${MACHINE} == "pmax" || ${MACHINE} == "wgrisc"
M_ARCH=		mipsel
.elif ${MACHINE} == "hkmips" || ${MACHINE} == "sgi"
M_ARCH=		mips
.else
M_ARCH=		${MACHINE_ARCH}
.endif
SYS_REL!=	uname -r

GCCARCH=	${M_ARCH}-unknown-openbsd${SYS_REL}
CONFIGURE_ARGS=	${GCCARCH} --with-x-toolkit
STRIP=
MAN1=		emacs.1 etags.1 ctags.1

pre-install pre-package:
	@${RM} -f ${PKGDIR}/PLIST
	@${SED} -e 's/||CONFIG||/${GCCARCH}/' \
		${FILESDIR}/PLIST.template >${PKGDIR}/PLIST

post-install:
.for file in emacs-20.2 emacsclient etags ctags b2m
	strip ${PREFIX}/bin/${file}
.endfor

.include <bsd.port.mk>
