# $OpenBSD: Makefile,v 1.7 1998/10/08 23:00:30 marc Exp $
#

VER=		20.3
DISTNAME=	emacs-${VER}
CATEGORIES=	editors

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	ftp://prep.ai.mit.edu/pub/gnu/

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
# To do the job correctly temacs should be stripped, not emacs
# (which is created from temacs).
#
INSTALL_STRIP=
STRIP_PROGS=	emacsclient etags ctags b2m
.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=	${DISTNAME}
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
	strip ${PREFIX}/libexec/emacs/${VER}/${GCCARCH}/${file}
.endfor

.include <bsd.port.mk>
