# $OpenBSD: Makefile,v 1.4 2004/08/10 20:41:47 xsa Exp $

# until tested on others, even though bytecode is produced
ONLY_FOR_ARCHS=	i386 amd64 macppc

COMMENT=	"framework for analysis and transformation of C"

DISTNAME=	cil-1.2.5
CATEGORIES=	devel lang
MASTER_SITES=	http://manju.cs.berkeley.edu/cil/distrib/

HOMEPAGE=	http://manju.cs.berkeley.edu/cil/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ocaml
WRKDIST=	${WRKDIR}/cil

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.52
USE_GMAKE= yes
ALL_TARGET= setup
P5SITE= libdata/perl5/site_perl
P5INST= ${PREFIX}/${P5SITE}
SUBST_VARS+= P5SITE
GCC=/usr/bin/gcc  # cant use CC in case it's set to cilly

post-extract:
	@cp ${FILESDIR}/nullint.ml ${WRKSRC}/src/ext

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cil
	${INSTALL_DATA_DIR} ${P5INST}/CIL

post-install:
	sed -e 's,@CILHOME@/lib,${LOCALBASE}/${P5SITE}/CIL,g' \
	     -e 's,@CILHOME@,${LOCALBASE},g' \
	     -e 's,@ARCHOS@,libexec/cil,g' \
	     -e 's,@CC@,${GCC},g' < \
	    ${WRKSRC}/bin/CilConfig.pm.in > ${P5INST}/CilConfig.pm

	${INSTALL_PROGRAM} ${WRKBUILD}/bin/cilly ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/patcher ${PREFIX}/bin

.for i in Cilly KeptFile OutputFile TempFile
	${INSTALL_DATA} ${WRKSRC}/lib/${i}.pm ${P5INST}/CIL
.endfor

.for i in machdep.exe cilly.byte.exe cilly.asm.exe
	${INSTALL_PROGRAM} ${WRKBUILD}/obj/x86_LINUX/${i} ${PREFIX}/libexec/cil
.endfor

.include <bsd.port.mk>
