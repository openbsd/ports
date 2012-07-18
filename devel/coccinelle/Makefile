# $OpenBSD: Makefile,v 1.15 2012/07/18 08:04:43 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	program matching and transformation engine

# if updating, check for any additional use of diff/grep which
# may need to be switched to gdiff/ggrep
DISTNAME =	coccinelle-1.0.0-rc11
PKGNAME =	${DISTNAME:S/-rc/rc/}
EXTRACT_SUFX =	.tgz

CATEGORIES =	devel

HOMEPAGE =	http://coccinelle.lip6.fr/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c m pthread util pcre ${MODPY_WANTLIB}

MASTER_SITES = ${HOMEPAGE}distrib/

MODULES =		lang/ocaml \
			lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
REGRESS_DEPENDS =	${FULLPKGPATH}
RUN_DEPENDS =		devel/ocaml-pcre \
			sysutils/findlib \
			sysutils/ggrep \
			textproc/gdiff

# asks questions at the end if it does better than expected
REGRESS_IS_INTERACTIVE = Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}
CONFIGURE_ARGS =	--with-python=${MODPY_BIN}

REGRESS_TARGET =	test
SUBST_VARS +=		MAKE_PROGRAM

# can't use MODOCAML_NATIVE here because we need not
# just native code, but also dynlink
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
# "world"=build both bytecode and native binaries
# "all.opt"=only build native binaries (but regression
# tests didn't work with this)
ALL_TARGET =	world
INSTALL_TARGET = install-common install-def install-man
PKG_ARGS +=	-DOCAMLOPT=.opt
.else
WANTLIB +=	curses
PKG_ARGS +=	-DOCAMLOPT=
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pycaml/Makefile
	perl -pi -e s,/usr/local,${TRUEPREFIX},g ${WRKSRC}/scripts/spatch*

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/coccinelle/python/coccilib

.include <bsd.port.mk>
