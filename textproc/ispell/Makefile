# $OpenBSD: Makefile,v 1.6 1999/06/21 04:07:05 brad Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	ispell-3.1.20
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.cs.ucla.edu/pub/ispell-3.1/

PATCH_SITES=	ftp://ftp.kiarchive.ru/pub/unix/text/ispell/
PATCHFILES=	ispell-html-mode.patch

MAINTAINER=	ports@openbsd.org

WRKSRC=		${WRKDIR}/ispell-3.1

MAKE_FLAGS=	TMPDIR=${WRKDIR} -f 

pre-fetch pre-build pre-install:
.if !defined(NO_WARNINGS)
.if !defined(ISPELL_FR)
	@${ECHO} '******************************************************' 
	@${ECHO} '* Note that you can build a french/english version   *' 
	@${ECHO} '* by typing "make french"                            *'
	@${ECHO} '******************************************************' 
.else
EXTRA_DICT=	francais-IREQ-1.4.tar.gz
MASTER_SITES+=	ftp://ftp.robot.ireq.ca/pub/ispell/
DISTFILES+=	${EXTRA_DICT}
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

pre-install:
	@${MKDIR} ${PREFIX}/share/emacs/site-lisp

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/ispell ${PREFIX}/info/dir

.include <bsd.port.mk>
