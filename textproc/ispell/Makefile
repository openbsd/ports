# $OpenBSD: Makefile,v 1.28 2002/10/28 22:43:46 naddy Exp $

COMMENT=		interactive spelling checker
COMMENT-french=		ispell dictionary for French
COMMENT-german=		ispell dictionary for German
COMMENT-swedish=	ispell dictionary for Swedish
COMMENT-russian=	ispell dictionary for Russian
COMMENT-portuguese=	ispell dictionary for Rortuguese

VERSION=	3.2.06
DISTNAME=	ispell-${VERSION}
CATEGORIES=	textproc

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://fmg-www.cs.ucla.edu/geoff/ispell.html

MASTER_SITES=	http://fmg-www.cs.ucla.edu/geoff/tars/ \
		ftp://ftp.netsw.org/dict/tools/
MASTER_SITES0=	ftp://ftp.robot.ireq.ca/pub/ispell/
MASTER_SITES1=	ftp://ftp.informatik.uni-kiel.de/pub/kiel/dicts/
MASTER_SITES2=	http://www.sslug.dk/locale/ispell/iswedish/
MASTER_SITES3=	ftp://mch5.chem.msu.su/pub/russian/ispell/ \
		ftp://ftp.afti.nsu.ru/pub/mirrors/russian-ispell/
MASTER_SITES4=	http://natura.di.uminho.pt/~jj/pln/

DIST_SUBDIR=	ispell

FRENCH_DICT=		francais-IREQ-1.4
GERMAN_DICT=		hk2-deutsch
SWEDISH_DICT=		iswedish-1.2.1
RUSSIAN_DICT=		rus-ispell-0.99e7
PORTUGUESE_DICT=	UMportugues

DISTFILES=	${DISTNAME}.tar.gz \
		${FRENCH_DICT}.tar.gz:0 \
		${GERMAN_DICT}.tar.gz:1 \
		${SWEDISH_DICT}.tar.gz:2 \
		${RUSSIAN_DICT}.tar.gz:3 \
		${PORTUGUESE_DICT}.tgz:4

EXTRACT_ONLY=	${DISTNAME}.tar.gz \
		${SWEDISH_DICT}.tar.gz \
		${PORTUGUESE_DICT}.tgz

SUBST_VARS+=	VERSION

MULTI_PACKAGES=	-french -german -swedish -russian -portuguese
.for i in ${MULTI_PACKAGES}
PKGNAME$i=	ispell$i-${VERSION}
.endfor
SUBPACKAGE?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=	::textproc/ispell
.endif

MAKE_FLAGS=	TMPDIR=${WRKDIR} 

NO_REGRESS=	Yes

post-extract:
	@mkdir -p ${WRKDIR}/french
	@(cd ${WRKDIR}/french; \
	tar xzf ${DISTDIR}/${DIST_SUBDIR}/${FRENCH_DICT}.tar.gz)

	@mkdir -p ${WRKDIR}/german
	@(cd ${WRKDIR}/german; \
	tar xzf ${DISTDIR}/${DIST_SUBDIR}/${GERMAN_DICT}.tar.gz)

	@mkdir -p ${WRKDIR}/russian
	@(cd ${WRKDIR}/russian; \
	tar xzf ${DISTDIR}/${DIST_SUBDIR}/${RUSSIAN_DICT}.tar.gz)

post-patch:
	@sed "s%/usr/local%${PREFIX}%g" ${WRKSRC}/local.h.samp > \
		${WRKSRC}/local.h
	@echo "#define CFLAGS \"${CFLAGS}\"" >> ${WRKSRC}/local.h
	@echo "#define CC \"${CC}\"" >> ${WRKSRC}/local.h

post-build:
	@sed "s%/usr/local%${PREFIX}%g" ${FILESDIR}/ispell-config > \
		${WRKDIST}/ispell-config

	@(cd ${WRKDIR}/french; \
	$(MAKE) RM='rm -f' HASH=${WRKDIST}/buildhash)

	@(cd ${WRKDIR}/german; \
	sort -u *.txt | ./tex2iso >all.words; \
	${WRKDIST}/buildhash all.words deutsch.aff deutsch.hash)

	@(cd ${WRKDIR}/${SWEDISH_DICT}; \
	${WRKDIST}/buildhash svenska.datalista svenska.aff svenska.hash)

	@(cd ${WRKDIR}/russian; \
	sort -u base.koi computer.koi geography.koi science.koi >all.words; \
	sed -e "s/^\#y//;s/^\#koi/wordchars/" < russian.aff.koi > russian.aff; \
	${WRKDIST}/buildhash all.words russian.aff russian.hash)

	@(cd ${WRKDIR}/portugues; \
	${WRKDIST}/buildhash portugues.dic portugues.aff portuguese.hash; \
	cp portugues.aff portuguese.aff)

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/ispell ${PREFIX}/bin/ispell
	${INSTALL_PROGRAM} ${WRKDIST}/buildhash ${PREFIX}/bin/buildhash
	${INSTALL_PROGRAM} ${WRKDIST}/tryaffix ${PREFIX}/bin/tryaffix
	${INSTALL_PROGRAM} ${WRKDIST}/ijoin ${PREFIX}/bin/ijoin
	${INSTALL_PROGRAM} ${WRKDIST}/findaffix ${PREFIX}/bin/findaffix
	${INSTALL_PROGRAM} ${WRKDIST}/munchlist ${PREFIX}/bin/munchlist
	${INSTALL_PROGRAM} ${WRKDIST}/icombine ${PREFIX}/bin/icombine
	${INSTALL_SCRIPT} ${WRKDIST}/ispell-config ${PREFIX}/bin/ispell-config

	${INSTALL_MAN} ${WRKDIST}/ispell.1 ${PREFIX}/man/man1/ispell.1
	ln -s ispell.1 ${PREFIX}/man/man1/buildhash.1
	ln -s ispell.1 ${PREFIX}/man/man1/munchlist.1
	ln -s ispell.1 ${PREFIX}/man/man1/findaffix.1
	ln -s ispell.1 ${PREFIX}/man/man1/tryaffix.1
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
	${INSTALL_DATA} ${WRKDIR}/russian/russian.{aff,hash} \
		${PREFIX}/lib/ispell
	${INSTALL_DATA} ${WRKDIR}/portugues/portuguese.{aff,hash} \
		${PREFIX}/lib/ispell

.include <bsd.port.mk>
