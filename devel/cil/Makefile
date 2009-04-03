# $OpenBSD: Makefile,v 1.17 2009/04/03 21:30:50 sturm Exp $

# until tested on others, even though bytecode is produced
ONLY_FOR_ARCHS=	i386 amd64 powerpc

COMMENT=	framework for analysis and transformation of C

DISTNAME=	cil-1.3.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel lang
MASTER_SITES=	http://manju.cs.berkeley.edu/cil/distrib/

HOMEPAGE=	http://manju.cs.berkeley.edu/cil/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m pthread

MODULES=	lang/ocaml
WRKDIST=	${WRKDIR}/cil

OURFILES=	nullint kerneltrace randomvars

CONFIGURE_STYLE= autoconf no-autoheader
AUTOCONF_VERSION= 2.61
USE_GMAKE= yes
ALL_TARGET= setup
CONFIGURE_ARGS= EXTRAFEATURES="${OURFILES}"
P5SITE= libdata/perl5/site_perl
P5INST= ${PREFIX}/${P5SITE}
SUBST_VARS+= P5SITE
GCC=/usr/bin/gcc  # cant use CC in case it's set to cilly

post-extract:
.for i in ${OURFILES}
	@cp ${FILESDIR}/$i.ml ${WRKSRC}/src/ext
.endfor

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cil
	${INSTALL_DATA_DIR} ${P5INST}/CIL

post-install:
	sed -e 's,@CILHOME@,${LOCALBASE},g' \
	     -e 's,@CILLIBDIR@,${LOCALBASE}/${P5SITE}/CIL,g' \
	     -e 's,@ARCHOS@,libexec/cil,g' \
             -e 's,@DEFAULT_CIL_MODE@,GNUCC,g' \
	     -e 's,@CC@,${GCC},g' < \
	    ${WRKSRC}/bin/CilConfig.pm.in > ${P5INST}/CilConfig.pm

	${INSTALL_SCRIPT} ${WRKBUILD}/bin/cilly ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/patcher ${PREFIX}/bin

.for i in Cilly KeptFile OutputFile TempFile
	${INSTALL_DATA} ${WRKSRC}/lib/${i}.pm ${P5INST}/CIL
.endfor

.for i in machdep.exe cilly.byte.exe cilly.asm.exe
	${INSTALL_PROGRAM} ${WRKBUILD}/obj/x86_LINUX/${i} ${PREFIX}/libexec/cil
.endfor

.include <bsd.port.mk>
