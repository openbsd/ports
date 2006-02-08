# $OpenBSD: Makefile,v 1.25 2006/02/08 04:54:50 david Exp $

COMMENT=	"Motif toolkit"
COMMENT-debuglibs="Motif toolkit debug libraries"
COMMENT-demos=	"Motif toolkit demos"
VERSION=	2.1.30
DISTNAME=	motif
PATCHLEVEL=	5
PKGNAME=	openmotif-${VERSION}.${PATCHLEVEL}p1
PKGNAME-demos=	openmotif-demos-${VERSION}.${PATCHLEVEL}p0
PKGNAME-debuglibs=openmotif-debuglibs-${VERSION}.${PATCHLEVEL}p0

SHARED_LIBS=	Mrm	3.0	\
		Uil	3.0	\
		Xm	3.0

CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.opengroup.org/pub/openmotif/R${VERSION}/tars/ \
		ftp://openmotif.opengroup.org/pub/openmotif/R${VERSION}/tars/ \
		ftp://ftp.kddlabs.co.jp/X11/openmotif/R${VERSION}/tars/
MASTER_SITES0=	ftp://ftp.opengroup.org/pub/openmotif/R${VERSION}/fixes/ \
		ftp://openmotif.opengroup.org/pub/openmotif/R${VERSION}/fixes/ \
		ftp://ftp.kddlabs.co.jp/X11/openmotif/R${VERSION}/fixes/
MASTER_SITES1=	http://www.opengroup.org/openmotif/license/
DISTFILES=	openmotif${VERSION}.tar.gz index.html:1
DIST_SUBDIR=	openmotif
EXTRACT_ONLY=	openmotif${VERSION}.tar.gz

PATCHFILES=	patch1:0 patch2:0 patch3:0 patch4:0 patch5:0
PATCH_DIST_STRIP=	-p1

HOMEPAGE=	http://www.opengroup.org/openmotif/

# license only available on webpage
# http://www.opengroup.org/openmotif/license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-demos -debuglibs
SUBPACKAGE?=

USE_X11=	Yes

ALL_TARGET=	World
INSTALL_TARGET=	install install.man

MAKE_FLAGS=	SOMRMREV=${LIBMrm_VERSION}	\
		SOUILREV=${LIBUil_VERSION}	\
		SOXMREV=${LIBXm_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS} ${DESTDIRNAME}=${WRKINST}

# This dialog has been copied from the lesstif port.
.if defined(HAVE_MOTIF) && ${HAVE_MOTIF:L} == "yes"
IS_INTERACTIVE=	Yes

pre-extract:
	@echo "***********************************************************"
	@echo "*                      W a r n i n g                      *"
	@echo "* This port will overwrite your Motif installation.       *"
	@echo "***********************************************************"
	@echo -n "Is this ok? (y/n) ==> "
	@(read ans; \
	  case x"$$ans" in \
	    xy*|xY*) \
		return 0; \
		;; \
	    *) \
		echo "Okay, I won't install it then...."; \
		echo "(Don't worry about the following \"*** Error code 1's)"; \
		return 1; \
		;; \
	esac)
.endif

pre-configure:
# fix sections
	@cd ${WRKSRC}/doc/man/man1 && perl -pi -e "s|user cmd|1|" *.1
	@cd ${WRKSRC}/doc/man/man3 && perl -pi -e "s|library call|3|" *.3
# mwmrc is not a kernel interface!!
	@cd ${WRKSRC}/doc/man/man4 && perl -pi -e "s|special file|5|" *.4
	@cd ${WRKSRC}/doc/man/man5 && perl -pi -e "s|file formats|5|" *.5
# Import from our current X installation.
	@cp -f `ls ${X11BASE}/lib/X11/config/* | egrep -v '(Motif|bsdLib.tmpl|cde|\/site.def|host.def)'` ${WRKDIR}/motif/config/cf
	@mkdir -p ${WRKSRC}/imports/x11
	@cd ${WRKSRC}/imports/x11 && for i in bin include lib ; do \
	    if [ -f $$i ] ; then rm $$i; fi; \
	    ln -s ${X11BASE}/$$i $$i; \
	done
# respect PREFIX
	@cd ${WRKSRC}/config/cf && \
	    perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" host.def Motif.tmpl config.cf

DOCS=BUGREPORT CLOSEDBUGS COPYRIGHT.MOTIF OPENBUGS README RELEASE RELNOTES
DOCDIR=${PREFIX}/share/doc/openmotif

post-install:
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA} ${FULLDISTDIR}/index.html ${DOCDIR}/LICENSE.html
	@for i in ${DOCS}; do ${INSTALL_DATA} ${WRKSRC}/$$i ${DOCDIR}; done
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${DOCDIR}

.if ${SUBPACKAGE} == "-demos"
LIB_DEPENDS+=	Xm.2.1,Uil.2.1,Mrm.2.1::x11/openmotif
.endif
.if ${SUBPACKAGE} == "-debuglibs"
RUN_DEPENDS+=	::x11/openmotif
.else
WANTLIB=	ICE SM X11 Xext Xp Xt c m 
.endif

# XXX  Large, complicated, only partially automated test suite available
NO_REGRESS=	Yes

.include <bsd.port.mk>
