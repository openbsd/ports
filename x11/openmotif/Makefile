# $OpenBSD: Makefile,v 1.4 2000/08/10 01:40:40 matt Exp $

DISTNAME=	motif
PKGNAME=	openmotif-2.1.30

CATEGORIES=	x11
NEED_VERSION=	1.310

HOMEPAGE=	http://www.opengroup.org/openmotif/

MAINTAINER=	smcho@tsp.korea.ac.kr

PERMIT_PACKAGE_CDROM=	Unclear
PERMIT_DISTFILES_CDROM=	Unclear
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://openmotif.opengroup.org/pub/openmotif/R2.1.30/tars/ \
		ftp://ftp.opengroup.org/pub/openmotif/R2.1.30/tars/ \
		ftp://ftp.isca.uiowa.edu/pub/mirrors/openmotif/tars
DISTFILES=	openmotif2.1.30.tar.gz

USE_X11=	yes
ALL_TARGET=	World

# This dialog has been copied off from lesstif port.
.if defined(HAVE_MOTIF)
IS_INTERACTIVE= yes
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
	@cd ${WRKSRC}/doc/man/man4 && perl -pi -e "s|special file|5|" *.4 \
	    && mv mwmrc.4 ../man5/mwmrc.5
	@cd ${WRKSRC}/doc/man/man5 && perl -pi -e "s|file formats|5|" *.5
	@cd ${WRKSRC}/config/cf && \
	    sed -e "s|%%PREFIX%%|${PREFIX}|g" < site.def > site.def.new && \
	    mv -f site.def.new site.def && \
	    sed -e "s|%%PREFIX%%|${PREFIX}|g" < Motif.tmpl > Motif.tmpl.new && \
	    mv -f Motif.tmpl.new Motif.tmpl
# Import from our current X installation.
	@cp -f `ls /usr/X11R6/lib/X11/config/* | grep -v '\(Motif\|cde\|\/site.def\)'` ${WRKDIR}/motif/config/cf
	@mkdir -p ${WRKSRC}/imports/x11
	@cd ${WRKSRC}/imports/x11 && for i in bin include lib ; do \
	    if [ -f $$i ] ; then rm $$i; fi; \
	    ln -s ${X11BASE}/$$i $$i; \
	done

post-build:
# tblize the manpages.
	@for i in man1 man3 man5 ; do cd ${WRKSRC}/doc/man/$$i; \
	    echo "building in doc/man/$$i"; \
	    for m in *; do \
		tbl $$m > $$m.new && \
		mv -f $$m.new $$m; \
	    done; \
	done

# Install the manpages.
post-install:
	@for i in man1 man3 man5 ; do cd ${WRKSRC}/doc/man/$$i; \
	    echo "installing in doc/man/$$i"; \
	    for m in *; do \
		mkdir -p ${PREFIX}/man/$$i; \
		$(INSTALL_MAN) $$m ${PREFIX}/man/$$i; \
	    done; \
	done

.include <bsd.port.mk>

