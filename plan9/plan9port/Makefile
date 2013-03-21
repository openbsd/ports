# $OpenBSD: Makefile,v 1.4 2013/03/21 22:26:27 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc
BROKEN-powerpc =	threading issues

COMMENT =		Plan 9 from user space

DISTNAME =		plan9port-20120508
REVISION =		1

CATEGORIES =		plan9

HOMEPAGE =		http://swtch.com/plan9port/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# mostly LPL (see LICENSE)
# certain fonts may NOT be redistributed separately
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xext c kvm m pthread util

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} pgw.tar.bz2 \
				roget.tar.bz2:0 scat.tgz:1
DIST_SUBDIR =		plan9port
MASTER_SITES =		${HOMEPAGE}
MASTER_SITES0 =		http://pdos.lcs.mit.edu/~rsc/software/plan9/
MASTER_SITES1 =		http://pdos.lcs.mit.edu/~rsc/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		archivers/bzip2
RUN_DEPENDS =		print/ghostscript/gnu \
			print/gv

WRKDIST =		${WRKDIR}/plan9

PLAN9 =			${PREFIX}/plan9

NO_TEST =		Yes

SCRIPTS = \" \"\" 9 9.rc 9a 9ar 9c 9fs 9l B E Getdir adict awd bundle \
	codereview \
	codereview.py doctype g ipso kill label lc lookman man mk9660 mount \
	netfileget netfilelib.rc netfileput netfilestat nobs nroff osxvers ps \
	psfonts psu psv samsave sig slay spell src ssam stack start stop tref \
	troff2png u u.rc unmount vmount vwhois web wintext wmail yesterday

BINS = 9660srv 9p 9pserve 9term Mail Netfiles acme acmeevent aescbc ascii \
	asn12dsa asn12rsa astro auxclog auxstats awk basename bc bmp bunzip2 \
	bzip2 cal calendar cat cb cleanname cmapcube cmp colors comm core crop \
	date dc dd delatex deroff devdraw dial dict diff disknfs dns dnsdebug \
	dnsquery dnstcp dsa2pub dsa2ssh dsagen dsasign du dump9660 echo ed eqn \
	factor factotum file fmt fontsrv fortune freq fsize getflags gif grap \
	graph grep gunzip gview gzip hget hist hoc htmlfmt htmlroff ico iconv \
	idiff img import join jpg lex listen1 look ls mapd mc md5sum mk mkdir \
	mklatinkbd mtime namespace ndbipquery ndbmkdb ndbmkhash ndbmkhosts \
	ndbquery netkey news p page passwd pbd pemdecode pemencode pic plot \
	plumb plumber png ppm pr primes proof psdownload ramfs rc read \
	readcons resample rio rm rsa2csr rsa2pub rsa2ssh rsa2x509 rsafill \
	rsagen sam samterm scat secstore secstored secuser sed seq sftpcache \
	sha1sum sleep snarfer sort split sprog srv ssh-agent stats statusbar \
	strings sum tail tar tbl tcolors tcs tee test time togif toico topng \
	toppm touch tpic tr tr2post troff troff2html tweak unicode uniq units \
	unutf unvac unzip usage vac vacfs vbackup vcat vmount0 vnfs wc win xd \
	xshove yacc yuv zerotrunc zip 9pfuse acid acidtypes db

VENTI_BINS =    buildindex copy fmtbloom printarenapart syncindex \
        checkarenas dump fmtindex rdarena venti checkindex findscore \
        fmtisect read verifyarena clumpstats fixarenas mirrorarenas \
        ro wrarena fmtarenas printarena sync write

post-extract:
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/pgw.tar.bz2
	cd ${WRKSRC}/dict && tar xjf ${FULLDISTDIR}/roget.tar.bz2
	cd ${WRKSRC}/sky && tar xzf ${FULLDISTDIR}/scat.tgz

post-patch:
	cd ${WRKSRC}/src/libthread && cp Darwin-x86_64-swapcontext.c \
		OpenBSD-x86_64.c && cp Darwin-x86_64-asm.s \
		OpenBSD-x86_64-asm.S
	find ${WRKSRC} -name .cvsignore -exec rm -f {} \;
	cd ${WRKSRC} && rm -rf .hg .hgignore .hgtags

do-build:
	cd ${WRKSRC} && env CC9="${CC}" CCFLAGS="${CFLAGS}" ./INSTALL -b

do-install:
	find ${WRKSRC}/src -name '*.orig' -exec rm -f {} \+
	cd ${WRKSRC} && perl -pi -e 's#/usr/local#${TRUEPREFIX}#' \
		`cat lib/moveplan9.files`

	${INSTALL_DATA_DIR} ${PLAN9}
	cd ${WRKSRC} && ${INSTALL_DATA} CONTRIBUTORS LICENSE rcmain ${PLAN9}
	${INSTALL_PROGRAM_DIR} ${PLAN9}/bin
	cd ${WRKSRC}/bin && ${INSTALL_SCRIPT} ${SCRIPTS} ${PLAN9}/bin
	cd ${WRKSRC}/bin && ${INSTALL_PROGRAM} ${BINS} ${PLAN9}/bin
	${INSTALL_PROGRAM_DIR} ${PLAN9}/bin/fs
	${INSTALL_PROGRAM} ${WRKSRC}/bin/fs/* ${PLAN9}/bin/fs
	${INSTALL_PROGRAM_DIR} ${PLAN9}/bin/upas
	${INSTALL_SCRIPT} ${WRKSRC}/bin/upas/* ${PLAN9}/bin/upas
	${INSTALL_PROGRAM_DIR} ${PLAN9}/bin/venti
	cd ${WRKSRC}/bin/venti && ${INSTALL_PROGRAM} ${VENTI_BINS} \
		${PLAN9}/bin/venti
	${INSTALL_SCRIPT} ${WRKSRC}/bin/venti/conf ${PLAN9}/bin/venti

	${INSTALL_MAN_DIR} ${PLAN9}/man
.for f in fonts index.html junkwords lookman.index mkfile mkindex secindex
	${INSTALL_DATA} ${WRKSRC}/man/${f} ${PLAN9}/man
.endfor
.for n in 1 3 4 5 6 7 8 9
	${INSTALL_MAN_DIR} ${PLAN9}/man/man${n}
	${INSTALL_MAN} ${WRKSRC}/man/man${n}/* ${PLAN9}/man/man${n}
.endfor

	cd ${WRKSRC} && pax -rw acid dict face font include lib \
		ndb news plumb postscript proto sky src tmac troff ${PLAN9}
	cd ${PREFIX} && ln -s ../plan9/bin/9 bin/9

.include <bsd.port.mk>
