# $OpenBSD: Makefile,v 1.22 2001/07/09 17:34:11 jakob Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=		interactive spelling checker
COMMENT-french=		ispell dictionary for French
COMMENT-german=		ispell dictionary for German
COMMENT-swedish=	ispell dictionary for Swedish

VERSION=	3.1.20
DISTNAME=	ispell-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.361

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://fmg-www.cs.ucla.edu/geoff/ispell.html

MASTER_SITES=	ftp://ftp.cs.ucla.edu/pub/ispell-3.1/
MASTER_SITES0=	ftp://ftp.robot.ireq.ca/pub/ispell/
MASTER_SITES1=	ftp://ftp.informatik.uni-kiel.de/pub/kiel/dicts/
MASTER_SITES2=	ftp://ftp.kiarchive.ru/pub/unix/text/ispell/
MASTER_SITES3=	http://www.sslug.dk/locale/ispell/iswedish/

DIST_SUBDIR=	ispell

FRENCH_DICT=	francais-IREQ-1.4
GERMAN_DICT=	hk2-deutsch
SWEDISH_DICT=	iswedish-1.2.1

DISTFILES=	${DISTNAME}.tar.gz ${FRENCH_DICT}.tar.gz:0 ${GERMAN_DICT}.tar.gz:1 ${SWEDISH_DICT}.tar.gz:3
EXTRACT_ONLY=	${DISTNAME}.tar.gz ${SWEDISH_DICT}.tar.gz
PATCHFILES=	ispell-html-mode.patch:2

MULTI_PACKAGES=	-french -german -swedish
.for i in ${MULTI_PACKAGES}
PKGNAME$i=	ispell$i-${VERSION}
.endfor

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/ispell-3.1
MAKE_FLAGS=	TMPDIR=${WRKDIR} 

post-extract:
	@mkdir -p ${WRKDIR}/french
	@(cd ${WRKDIR}/french; \
	tar xzf ${DISTDIR}/${DIST_SUBDIR}/${FRENCH_DICT}.tar.gz)

	@mkdir -p ${WRKDIR}/german
	@(cd ${WRKDIR}/german; \
	tar xzf ${DISTDIR}/${DIST_SUBDIR}/${GERMAN_DICT}.tar.gz)

post-configure:
	@echo "#define CFLAGS \"${CFLAGS}\"" >> ${WRKSRC}/local.h

post-build:
	@sed "s%/usr/local%${PREFIX}%g" ${SCRIPTDIR}/ispell-config > \
		${WRKDIST}/ispell-config

	@(cd ${WRKDIR}/french; \
	$(MAKE) RM='rm -f' HASH=${WRKDIST}/buildhash)

	@(cd ${WRKDIR}/german; \
	sort -u *.txt | ./tex2iso >all.words; \
	${WRKDIST}/buildhash all.words deutsch.aff deutsch.hash)

	@(cd ${WRKDIR}/${SWEDISH_DICT}; \
	${WRKDIST}/buildhash svenska.datalista svenska.aff svenska.hash)

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

	ln -s american.aff ${PREFIX}/lib/ispell/default.aff
	ln -s american.hash ${PREFIX}/lib/ispell/default.hash

	${INSTALL_DATA} ${WRKDIR}/german/deutsch.{aff,hash} \
		${PREFIX}/lib/ispell
	${INSTALL_DATA} ${WRKDIR}/french/francais.{aff,hash} \
		${PREFIX}/lib/ispell
	${INSTALL_DATA} ${WRKDIR}/${SWEDISH_DICT}/svenska.{aff,hash} \
		${PREFIX}/lib/ispell

.include <bsd.port.mk>
