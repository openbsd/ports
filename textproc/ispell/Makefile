# $OpenBSD: Makefile,v 1.17 2000/04/09 17:38:27 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

FRENCH_DICT=	francais-IREQ-1.4
GERMAN_DICT=	hk2-deutsch

DISTNAME=	ispell-3.1.20
CATEGORIES=	textproc
NEED_VERSION=	1.195
FAKE=No
MASTER_SITES=	ftp://ftp.cs.ucla.edu/pub/ispell-3.1/
MASTER_SITES0=	ftp://ftp.robot.ireq.ca/pub/ispell/
MASTER_SITES1=	ftp://ftp.informatik.uni-kiel.de/pub/kiel/dicts/
MASTER_SITES2=	ftp://ftp.kiarchive.ru/pub/unix/text/ispell/
SUPDISTFILES=	${FRENCH_DICT}.tar.gz:0 ${GERMAN_DICT}.tar.gz:1

PATCHFILES=	ispell-html-mode.patch:2

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MAKE_FLAGS=	TMPDIR=${WRKDIR} 

WRKDIST=	${WRKDIR}/ispell-3.1

pre-fetch pre-build pre-install:
.if !defined(NO_WARNINGS)
.if !defined(ISPELL_FR) && !defined(ISPELL_DE)
	@echo ''
	@echo '******************************************************' 
	@echo '* Note that you can build a french/english or a      *' 
	@echo '* german/english version by setting the shell        *'
	@echo '* variable ISPELL_FR or ISPELL_DE to yes, ie.        *'
	@echo '* "make ISPELL_FR=yes" or "make ISPELL_DE=yes"       *'
	@echo '******************************************************' 
	@echo ''
.elif defined(ISPELL_FR) && ${ISPELL_FR:U} == YES
EXTRA_DICT=	${FRENCH_DICT}.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${EXTRA_DICT}:0
PLIST=		${PKGDIR}/PLIST.french
.elif defined(ISPELL_DE) && ${ISPELL_DE:U} == YES
EXTRA_DICT=	${GERMAN_DICT}.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${EXTRA_DICT}:1
PLIST=		${PKGDIR}/PLIST.german
.endif
.endif

pre-extract:
.if !defined(LANG) 
	@echo ''
	@echo '******************************************************' 
	@echo '* Note that you can build a british version by       *' 
	@echo '* typing "make british" following a "make clean"     *' 
	@echo '******************************************************' 
	@echo ''
.endif	

pre-configure:
.if defined(EXTRA_DICT)
	@echo ${EXTRA_DICT} > ${WRKDIR}/extra_dict
.endif

post-configure:
	@echo "#define CFLAGS \"${CFLAGS}\"" >> ${WRKSRC}/local.h

british:
	@echo "Okay, making a british version of ispell...."
	@make ${.MAKEFLAGS} LANG=british

french:
	@echo "Okay, making a french/english version of ispell...."
	@make ${.MAKEFLAGS} ISPELL_FR=Yes

german:
	@echo "Okay, making a german/english version of ispell...."
	@make ${.MAKEFLAGS} ISPELL_DE=Yes

post-install:
	@install-info ${PREFIX}/info/ispell.info ${PREFIX}/info/dir

.include <bsd.port.mk>
