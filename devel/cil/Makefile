# $OpenBSD: Makefile,v 1.23 2012/09/30 09:16:36 sthen Exp $

# until tested on others, even though bytecode is produced
ONLY_FOR_ARCHS =	${OCAML_NATIVE_ARCHS}

COMMENT=	framework for analysis and transformation of C
CATEGORIES =	devel lang

DISTNAME =	cil-1.5.1
REVISION =      1
EXTRACT_SUFX =	.tar.gz
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=cil/}

HOMEPAGE=	http://www.eecs.berkeley.edu/~necula/cil/

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m pthread

MODULES =		lang/ocaml
BUILD_DEPENDS=		sysutils/findlib

CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_VERSION =	2.69
USE_GMAKE =		yes
ALL_TARGET =		setup
REGRESS_TARGET =	check

OURFILES =		kerneltrace.ml nullint.ml randomvars.ml
CONFIGURE_ARGS =	EXTRAFEATURES="${OURFILES:R}"
P5SITE =		libdata/perl5/site_perl
P5INST =		${PREFIX}/${P5SITE}
SUBST_VARS +=		P5SITE
GCC =			/usr/bin/gcc  # cant use CC in case it's set to cilly

post-extract:
	cp ${FILESDIR}/*.ml ${WRKSRC}/src/ext

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/cilly ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/patcher ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cil
	${INSTALL_PROGRAM} \
		${WRKBUILD}/obj/x86_LINUX/machdep-ml*.exe \
		${PREFIX}/libexec/cil
	${INSTALL_DATA_DIR} ${P5INST}/CIL
	mv ${PREFIX}/lib/*.pm ${P5INST}/CIL/
	sed -e 's,@CILHOME@,${LOCALBASE},g' \
	     -e 's,@CILLIBDIR@,${LOCALBASE}/${P5SITE}/CIL,g' \
	     -e 's,@ARCHOS@,libexec/cil,g' \
             -e 's,@DEFAULT_CIL_MODE@,GNUCC,g' \
	     -e 's,@CC@,${GCC},g' < \
	    ${WRKSRC}/bin/CilConfig.pm.in > ${P5INST}/CilConfig.pm


.include <bsd.port.mk>
