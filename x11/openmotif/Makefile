# $OpenBSD: Makefile,v 1.8 2001/01/21 20:06:29 brad Exp $

VERSION=	2.1.30
DISTNAME=	motif
PATCHLEVEL=	5
PKGNAME=	openmotif-${VERSION}.${PATCHLEVEL}
CATEGORIES=	x11
NEED_VERSION=	1.340
MASTER_SITES=	ftp://ftp.opengroup.org/pub/openmotif/R${VERSION}/tars/ \
		ftp://openmotif.opengroup.org/pub/openmotif/R${VERSION}/tars/ \
		ftp://ftp.kddlabs.co.jp/X11/openmotif/R${VERSION}/tars/
MASTER_SITES0=	ftp://ftp.opengroup.org/pub/openmotif/R${VERSION}/fixes/ \
		ftp://openmotif.opengroup.org/pub/openmotif/R${VERSION}/fixes/ \
		ftp://ftp.kddlabs.co.jp/X11/openmotif/R${VERSION}/fixes/
DISTFILES=	openmotif${VERSION}.tar.gz
DIST_SUBDIR=	openmotif

PATCHFILES=	patch1:0 patch2:0 patch3:0 patch4:0 patch5:0
PATCH_DIST_STRIP=	-p1

HOMEPAGE=	http://www.opengroup.org/openmotif/

MAINTAINER=	Sungman Cho <smcho@tsp.korea.ac.kr>

PERMIT_PACKAGE_CDROM=	Unclear
PERMIT_DISTFILES_CDROM=	Unclear
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-demos -debuglibs
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-demos" || ${SUBPACKAGE} == "-debuglibs"
PKGNAME:=	openmotif${SUBPACKAGE}-${VERSION}.${PATCHLEVEL}
LIB_DEPENDS=	Xm.2::x11/openmotif
.endif

USE_X11=	Yes

ALL_TARGET=	World
INSTALL_TARGET=	install install.man

# This dialog has been copied off from lesstif port.
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

post-patch:
# fix sections
	@cd ${WRKSRC}/doc/man/man1 && perl -pi -e "s|user cmd|1|" *.1
	@cd ${WRKSRC}/doc/man/man3 && perl -pi -e "s|library call|3|" *.3
# mwmrc is not a kernel interface!!
	@cd ${WRKSRC}/doc/man/man4 && perl -pi -e "s|special file|5|" *.4
	@cd ${WRKSRC}/doc/man/man5 && perl -pi -e "s|file formats|5|" *.5
	@cd ${WRKSRC}/config/cf && \
	    perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" host.def Motif.tmpl
# Import from our current X installation.
	@cp -f `ls /usr/X11R6/lib/X11/config/* | grep -v '\(Motif\|cde\|\/site.def\|host.def\)'` ${WRKDIR}/motif/config/cf
	@mkdir -p ${WRKSRC}/imports/x11
	@cd ${WRKSRC}/imports/x11 && for i in bin include lib ; do \
	    if [ -f $$i ] ; then rm $$i; fi; \
	    ln -s ${X11BASE}/$$i $$i; \
	done

.include <bsd.port.mk>
