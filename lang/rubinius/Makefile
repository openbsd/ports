# $OpenBSD: Makefile,v 1.2 2010/11/24 21:35:14 jeremy Exp $

SHARED_ONLY=	Yes

COMMENT =	Ruby virtual machine and core library

V=		1.1.1
DISTNAME =	rubinius-${V}-20101116
PKGNAME =	rubinius-$V
REVISION =	0

CATEGORIES =	lang lang/ruby

HOMEPAGE =	http://rubini.us/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c crypto curses gdbm m pthread readline ssl stdc++ \
		${MODRUBY_WANTLIB}

MASTER_SITES =	http://asset.rubini.us/

BUILD_DEPENDS =	devel/bison \
		devel/ruby-rake
LIB_DEPENDS =	databases/gdbm \
		${MODRUBY_LIB_DEPENDS}
MODULES =	lang/ruby

USE_GMAKE =	Yes
USE_LIBTOOL=	Yes

M=		${V:R}
RAKE_VER =	0.8.7
RAKE_COMPILER_VER = 0.6.0
RDOC_VER =	2.5.1
RUBY_DEBUG_VER = 0.10.47
SUBST_VARS=	V M RAKE_VER RAKE_COMPILER_VER RDOC_VER RUBY_DEBUG_VER

WRKDIST=	${WRKDIR}/rubinius-${V}

do-configure:
	cd ${WRKSRC} && ${RUBY} configure --prefix=${PREFIX}/lib \
		--skip-prebuilt --disable-llvm --rake=${RAKE}

do-build:
	cd ${WRKSRC} && ${RAKE} build

do-install:
	cd ${WRKSRC} && FAKEROOT=${WRKINST} ${RAKE} install
	ln -s ${TRUEPREFIX}/lib/rubinius/${M}/bin/rbx ${PREFIX}/bin/rbx
	mkdir ${PREFIX}/lib/rubinius/${M}/gems/1.8/{,cache,doc,gems,specifications}
	for dir in sitelibdir sitearchdir; do \
		mkdir -p ${WRKINST}/`RBX_RUNTIME=${PREFIX}/lib/rubinius/${M}/runtime \
		RBX_LIB=${PREFIX}/lib/rubinius/${M}/lib \
		${PREFIX}/lib/rubinius/${M}/bin/rbx -rrbconfig -e \
		"puts RbConfig::CONFIG['$$dir']"`; done

do-regress:
	cd ${WRKSRC} && ${RAKE} vm:test
	cd ${WRKSRC} && RUBY=${RUBY} ${RUBY} mspec/bin/mspec

REGRESS_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
