# New ports collection makefile for:	GNU emacs
# Version required:	20.2
# Date created:		14 Nov 1997
# Whom:			ejovi

DISTNAME=	emacs-20.2
CATEGORIES=	editors
MASTER_SITES=	ftp://prep.ai.mit.edu/pub/gnu/

MAINTAINER=	ejovi@OpenBSD.ORG

WRKSRC=		${WRKDIR}/emacs-20.2
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS=	i386-unknown-openbsd2.2 --with-x-toolkit
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
