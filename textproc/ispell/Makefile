# $OpenBSD: Makefile,v 1.18 2000/06/23 03:06:34 jasoni Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	ispell-3.1.20
CATEGORIES=	textproc
NEED_VERSION=	1.270
MASTER_SITES=	ftp://ftp.cs.ucla.edu/pub/ispell-3.1/
MASTER_SITES0=	ftp://ftp.robot.ireq.ca/pub/ispell/
MASTER_SITES1=	ftp://ftp.informatik.uni-kiel.de/pub/kiel/dicts/
MASTER_SITES2=	ftp://ftp.kiarchive.ru/pub/unix/text/ispell/
FRENCH_DICT=	francais-IREQ-1.4
GERMAN_DICT=	hk2-deutsch
DISTFILES=	${DISTNAME}.tar.gz ${FRENCH_DICT}.tar.gz:0 ${GERMAN_DICT}.tar.gz:1
EXTRACT_ONLY=	${DISTNAME}.tar.gz ${GERMAN_DICT}.tar.gz

PATCHFILES=	ispell-html-mode.patch:2

MAINTAINER=	ports@openbsd.org

MULTI_PACKAGES=	-french -german

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/ispell-3.1
MAKE_FLAGS=	TMPDIR=${WRKDIR} 

post-extract:
	@mkdir ${WRKDIST}/languages/francais-IREQ
	@(cd ${WRKDIST}/languages/francais-IREQ; tar zxf ${DISTDIR}/${FRENCH_DICT}.tar.gz)

post-configure:
	@echo "#define CFLAGS \"${CFLAGS}\"" >> ${WRKSRC}/local.h

post-build:
	@sed "s%/usr/local%${PREFIX}%g" ${SCRIPTDIR}/ispell-config > \
		${WRKDIST}/ispell-config

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/ispell ${PREFIX}/bin/ispell
	${INSTALL_PROGRAM} ${WRKDIST}/buildhash ${PREFIX}/bin/buildhash
	${INSTALL_PROGRAM} ${WRKDIST}/sq ${PREFIX}/bin/sq
	${INSTALL_PROGRAM} ${WRKDIST}/tryaffix ${PREFIX}/bin/tryaffix
	${INSTALL_PROGRAM} ${WRKDIST}/ijoin ${PREFIX}/bin/ijoin
	${INSTALL_PROGRAM} ${WRKDIST}/findaffix ${PREFIX}/bin/findaffix
	${INSTALL_PROGRAM} ${WRKDIST}/munchlist ${PREFIX}/bin/munchlist
	${INSTALL_PROGRAM} ${WRKDIST}/icombine ${PREFIX}/bin/icombine
	${INSTALL_PROGRAM} ${WRKDIST}/unsq ${PREFIX}/bin/unsq
	${INSTALL_SCRIPT} ${WRKDIST}/ispell-config ${PREFIX}/bin/ispell-config
	${INSTALL_DATA} ${WRKDIST}/ispell.info ${PREFIX}/info/ispell.info

	${INSTALL_MAN} ${WRKDIST}/ispell.1 ${PREFIX}/man/man1/ispell.1
	ln -s ispell.1 ${PREFIX}/man/man1/sq.1
	ln -s ispell.1 ${PREFIX}/man/man1/buildhash.1
	ln -s ispell.1 ${PREFIX}/man/man1/munchlist.1
	ln -s ispell.1 ${PREFIX}/man/man1/findaffix.1
	ln -s ispell.1 ${PREFIX}/man/man1/tryaffix.1
	ln -s ispell.1 ${PREFIX}/man/man1/unsq.1
	${INSTALL_MAN} ${WRKDIST}/ispell.4 ${PREFIX}/man/man4/ispell.4
	ln -s ispell.4 ${PREFIX}/man/man4/english.4

	${INSTALL_DATA_DIR} ${PREFIX}/lib/ispell

	${INSTALL_DATA} ${WRKDIST}/languages/english/english.aff \
		${PREFIX}/lib/ispell/american.aff
	ln -s american.aff ${PREFIX}/lib/ispell/british.aff
	${INSTALL_DATA} ${WRKDIST}/languages/american/americanmed+.hash \
		${PREFIX}/lib/ispell/americanmed+.hash
	ln -s americanmed+.hash ${PREFIX}/lib/ispell/american.hash
	${INSTALL_DATA} ${WRKDIST}/languages/british/britishxlg.hash \
		${PREFIX}/lib/ispell/britishxlg.hash
	ln -s britishxlg.hash ${PREFIX}/lib/ispell/british.hash
	${INSTALL_DATA} ${WRKDIST}/languages/deutsch/deutsch.aff \
		${PREFIX}/lib/ispell/deutsch.aff
	${INSTALL_DATA} ${WRKDIST}/languages/deutsch/deutsch.hash \
		${PREFIX}/lib/ispell/deutsch.hash
	${INSTALL_DATA} ${WRKDIST}//languages/francais-IREQ/francais.aff \
		${PREFIX}/lib/ispell/francais.aff
	${INSTALL_DATA} ${WRKDIST}/languages/francais-IREQ/francais.hash \
		${PREFIX}/lib/ispell/francais.hash
	ln -s american.aff ${PREFIX}/lib/ispell/default.aff
	ln -s american.hash ${PREFIX}/lib/ispell/default.hash
	
.include <bsd.port.mk>

.if defined(SUBPACKAGE)
PKGNAME=ispell${SUBPACKAGE}-3.1.20
.endif
