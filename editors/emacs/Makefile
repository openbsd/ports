# $OpenBSD: Makefile,v 1.16 2000/03/07 02:13:10 espie Exp $

VER=		20.3
DISTNAME=	emacs-${VER}
CATEGORIES=	editors
NEED_VERSION=	1.218
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= emacs

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
USE_GMAKE=	Yes
FAKE=		Yes

.if ${MACHINE} == "arc" || ${MACHINE} == "pmax" || ${MACHINE} == "wgrisc"
M_ARCH=		mipsel
.elif ${MACHINE} == "hkmips" || ${MACHINE} == "sgi"
M_ARCH=		mips
.else
M_ARCH=		${MACHINE_ARCH}
.endif

GCCARCH=	${M_ARCH}-unknown-openbsd${OPSYS_VER}
CONFIGURE_ARGS+=${GCCARCH} --with-x-toolkit

# Do NOT strip on install.  We will strip those things that can be
# stripped after install. (emacs crashes if stripped on an alpha)
# To do the job correctly temacs should be stripped, not emacs
# (which is created from temacs).
INSTALL_STRIP=
STRIP_PROGS=	emacsclient etags ctags b2m
.if (${MACHINE_ARCH} != "alpha")
STRIP_PROGS+=	${DISTNAME}
.endif
STRIP_EXECS=	cvtmail digest-doc emacsserver fakemail hexl movemail \
		profile sorted-doc yow

# Put generated PLIST into WRKDIR to avoid collisions in a shared ports tree.
PLIST=		${WRKDIR}/PLIST

pre-install pre-package:
	@rm -f ${WRKDIR}/PLIST
	@sed -e 's/||CONFIG||/${GCCARCH}/' \
		${FILESDIR}/PLIST.template >${WRKDIR}/PLIST

post-install:
.for file in ${STRIP_PROGS}
	strip ${PREFIX}/bin/${file}
.endfor
.for file in ${STRIP_EXECS}
	strip ${PREFIX}/libexec/emacs/${VER}/${GCCARCH}/${file}
.endfor

.include <bsd.port.mk>
