COMMENT=	'new jersey Standard ML'
DISTFILES=      bin.x86-unix.tar.Z cm.tar.Z cml.tar.Z \
                config.tar.Z eXene.tar.Z \
                ml-burg.tar.Z ml-lex.tar.Z \
                ml-yacc.tar.Z runtime.tar.Z \
                smlnj-c.tar.Z smlnj-lib.tar.Z
#EXTRACT_ONLY=   config.tar.Z 

PKGNAME=		smlnj-110.0.7
CATEGORIES=     	lang
ONLY_FOR_ARCHS=		i386

MAINTAINER=		Jens Gerlach Christensen <vepjan@worldonline.dk>
DIST_SUBDIR=		smlnj-110.0.7
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	ftp://ftp.research.bell-labs.com/dist/smlnj/release/110.0.7/
EXTRACT_SUFX=	.tar.Z
#USE_GMAKE=      yes

SML_BASE=       ${PREFIX}/smlnj
SML_LIBDIR=     ${SML_BASE}/lib
SML_BINDIR=     ${SML_BASE}/bin
SML_SRCDIR=     ${SML_BASE}/src
SML_EXES=       ml-burg ml-lex ml-yacc sml sml-cm

post-extract:
	mkdir -p ${WRKDIR}/src
	cd ${WRKDIR} && \
	    mv cm cml eXene ml-burg ml-lex ml-yacc runtime smlnj-lib src
#post-extract:
#	cd ${WRKDIR} && ln -sf ${DISTDIR}/${DIST_SUBDIR}/*  .

do-build:
	cd ${WRKDIR} && unset PWD && \
	FILESDIR="$(FILESDIR)" ./config/install.sh
	
do-install:
	rm -rf ${SML_BASE}
	-mkdir ${SML_BASE} ${SML_BINDIR} ${SML_LIBDIR}
	tar -C ${WRKDIR} -cf - bin | tar -C ${SML_BASE} -xf -
	rm -f ${SML_BINDIR}/.run-sml
	sed -e "s,^BIN_DIR=.*\$$,BIN_DIR=${TRUEPREFIX}/smlnj/bin," \
		< ${WRKDIR}/bin/.run-sml > ${SML_BINDIR}/.run-sml
	chmod 755 ${SML_BINDIR}/.run-sml
	cd ${WRKDIR} && tar -cf - `find . -name x86-unix` | \
		tar -C ${SML_BASE} -xf -
	cd ${WRKDIR} && tar -cf - `${SCRIPTDIR}/get-cm ${WRKDIR}` | \
		tar -C ${SML_BASE} -xf -
	for file in ${WRKDIR}/lib/*; do\
		sed -e "s,${WRKDIR},${TRUEPREFIX}/smlnj," < $$file > \
			${SML_LIBDIR}/`basename $$file`; \
	done
	cd ${PREFIX}/bin && \
	for file in ${SML_EXES}; do \
		ln -s ../smlnj/bin/$$file .; \
	done

.include <bsd.port.mk>
