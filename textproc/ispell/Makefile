# $OpenBSD: Makefile,v 1.8 1999/06/28 17:45:51 brad Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

NEED_VERSION=	1.89

FRENCH_DICT=	francais-IREQ-1.4
GERMAN_DICT=	hk2-deutsch

DISTNAME=	ispell-3.1.20
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.cs.ucla.edu/pub/ispell-3.1/ \
		ftp://ftp.robot.ireq.ca/pub/ispell/ \
		ftp://ftp.informatik.uni-kiel.de/pub/kiel/dicts/
SUPDISTFILES=	${DISTNAME}.tar.gz ${FRENCH_DICT}.tar.gz ${GERMAN_DICT}.tar.gz

PATCH_SITES=	ftp://ftp.kiarchive.ru/pub/unix/text/ispell/
PATCHFILES=	ispell-html-mode.patch

MAINTAINER=	ports@openbsd.org

MAKE_FLAGS=	TMPDIR=${WRKDIR} -f 

WRKSRC=		${WRKDIR}/ispell-3.1

pre-fetch pre-build pre-install:
.if !defined(NO_WARNINGS)
.if !defined(ISPELL_FR) && !defined(ISPELL_DE)
	@${ECHO} '******************************************************' 
	@${ECHO} '* Note that you can build a french/english or a      *' 
	@${ECHO} '* german/english version by setting the shell        *'
	@${ECHO} '* variable ISPELL_FR or ISPELL_DE                    *'
	@${ECHO} '******************************************************' 
.elif defined(ISPELL_FR)
EXTRA_DICT=	${FRENCH_DICT}.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${EXTRA_DICT}
PLIST=		${PKGDIR}/PLIST.french
.elif defined(ISPELL_DE)
EXTRA_DICT=	${GERMAN_DICT}.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${EXTRA_DICT}
PLIST=		${PKGDIR}/PLIST.german
.endif
.endif

pre-extract:
.if !defined(LANG) 
	@${ECHO} '******************************************************' 
	@${ECHO} '* Note that you can build a british version by       *' 
	@${ECHO} '* typing "make british" following a "make clean"     *' 
	@${ECHO} '******************************************************' 
.endif	

pre-configure:
.if defined(EXTRA_DICT)
	@${ECHO} ${EXTRA_DICT} > ${WRKDIR}/extra_dict
.else
	@${ECHO} -n
.endif

post-configure:
	@${ECHO} "#define CFLAGS \"${CFLAGS}\"" >> ${WRKSRC}/local.h

british:
	@${ECHO} "Okay, making a british version of ispell...."
	@${MAKE} ${.MAKEFLAGS} LANG=british all 

french:
	@${ECHO} "Okay, making a french/english version of ispell...."
	@${MAKE} ${.MAKEFLAGS} ISPELL_FR=yes

german:
	@${ECHO} "Okay, making a german/english version of ispell...."
	@${MAKE} ${.MAKEFLAGS} ISPELL_DE=yes

pre-install:
	@${MKDIR} ${PREFIX}/share/emacs/site-lisp

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/ispell ${PREFIX}/info/dir

.include <bsd.port.mk>
