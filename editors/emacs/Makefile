# New ports collection makefile for:	GNU emacs
# Version required:	20.2
# Date created:		14 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.3 1997/12/04 07:22:46 niklas Exp $
#

DISTNAME=	emacs-20.2
CATEGORIES=	editors
MASTER_SITES=	ftp://prep.ai.mit.edu/pub/gnu/

MAINTAINER=	joey@OpenBSD.ORG

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

GCCARCH=	${M_ARCH}-unknown-openbsd`uname -r`
CONFIGURE_ARGS=	${GCCARCH} --with-x-toolkit
STRIP=
MAN1=		emacs.1 etags.1 ctags.1

post-install:
.for file in emacs-20.2 emacsclient etags ctags b2m
	strip ${PREFIX}/bin/${file}
.endfor
	if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
.for info in emacs vip viper forms gnus mh-e cl sc dired-x ediff ccmode
	install-info ${PREFIX}/info/${info} ${PREFIX}/info/dir
.endfor

.include <bsd.port.mk>
