# $OpenBSD: Makefile,v 1.21 2014/09/16 18:07:41 landry Exp $

ONLY_FOR_ARCHS=i386 powerpc
BROKEN-powerpc =	/usr/obj/ports/smlnj-110.76//bin/.run/run.ppc-openbsd: undefined symbol ''

COMMENT=	New Jersey Standard ML

V=		110.76

PKGNAME=	smlnj-$V
CATEGORIES=	lang

HOMEPAGE=	http://www.smlnj.org/

# http://www.smlnj.org/license.html
PERMIT_PACKAGE_CDROM=	without fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c m

MASTER_SITES= 	http://smlnj.cs.uchicago.edu/dist/working/$V/
DIST_SUBDIR=	smlnj-$V

.if ${MACHINE_ARCH} == "i386"
_SMLNJ_ARCH=	x86
.elif ${MACHINE_ARCH} == "powerpc"
_SMLNJ_ARCH=	ppc
.endif

SUBST_VARS+=	_SMLNJ_ARCH

DISTFILES=	MLRISC.tgz \
		boot.ppc-unix.tgz \
		boot.x86-unix.tgz \
		ckit.tgz cm.tgz cml.tgz \
		compiler.tgz config.tgz \
		eXene.tgz heap2asm.tgz \
		ml-burg.tgz ml-lex.tgz \
		ml-lpt.tgz ml-yacc.tgz \
		nlffi.tgz pgraph.tgz \
		runtime.tgz smlnj-c.tgz \
		smlnj-lib.tgz system.tgz \
		trace-debug-profile.tgz

SML_BASE=	${PREFIX}/smlnj
SML_LIBDIR=	${SML_BASE}/lib
SML_BINDIR=	${SML_BASE}/bin
SML_EXES= 	heap2exec ml-antlr ml-build \
	       	ml-burg ml-lex \
		ml-makedepend ml-nlffigen \
	       	ml-ulex ml-yacc sml

USE_GMAKE=	Yes
NO_TEST=	Yes

post-extract:
	mkdir -p ${WRKDIR}/base
	cd ${WRKDIR} && \
	    mv cm compiler runtime base

do-build:
	cd ${WRKDIR} && unset PWD && \
	for file in "config/_*"; do  \
		${SUBST_CMD} ${WRKDIR}/$$file; \
	done; \
	FILESDIR="$(FILESDIR)" SMLNJ_HOME="${WRKSRC}" ./config/install.sh

do-install:
	rm -rf ${SML_BASE}
	mkdir ${SML_BASE} ${SML_BINDIR} ${SML_LIBDIR}
	tar -C ${WRKDIR} -cf - bin | tar -C ${SML_BASE} -xf -
	tar -C ${WRKDIR} -cf - lib | tar -C ${SML_BASE} -xf -
	# Remove symlinks which may have been copied if ccache was used
	rm -f ${SML_BASE}/bin/{g,}cc ${SML_BASE}/bin/{g,c}++
	cd ${PREFIX}/bin && \
	for file in ${SML_EXES}; do \
		ln -s ../smlnj/bin/$$file .; \
	done

.include <bsd.port.mk>
