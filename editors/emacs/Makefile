# New ports collection makefile for:	GNU emacs
# Version required:	20.2
# Date created:		14 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.5 1998/04/06 05:17:48 marc Exp $
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

# Do NOT strip on install.  We will strip those things that can be
# stripped after install. (emacs crashes if stripped on an alpha)
#
INSTALL_STRIP=
STRIP_PROGS=	emacsclient etags ctags b2m
.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=	emacs-20.2
.endif
STRIP_EXECS=	cvtmail digest-doc emacsserver fakemail hexl movemail \
		profile sorted-doc yow

pre-install pre-package:
	@${RM} -f ${PKGDIR}/PLIST
	@${SED} -e 's/||CONFIG||/${GCCARCH}/' \
		${FILESDIR}/PLIST.template >${PKGDIR}/PLIST

post-install:
.for file in ${STRIP_PROGS}
	strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	strip ${PREFIX}/libexec/emacs/20.2/${GCCARCH}/${file}
.endfor

.include <bsd.port.mk>
