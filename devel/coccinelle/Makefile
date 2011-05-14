# $OpenBSD: Makefile,v 1.1.1.1 2011/05/14 15:02:50 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	program matching and transformation engine

# if updating, check for any additional use of diff/grep which
# may need to be switched to gdiff/ggrep
DISTNAME =	coccinelle-1.0.0-rc1
PKGNAME =	${DISTNAME:S/-rc/rc/}
EXTRACT_SUFX =	.tgz

CATEGORIES =	devel

HOMEPAGE =	http://coccinelle.lip6.fr/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c curses m pthread util ${MODPY_WANTLIB}

MASTER_SITES = ${HOMEPAGE}distrib/

MODULES =		lang/ocaml \
			lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
REGRESS_DEPENDS =	${FULLPKGPATH}
RUN_DEPENDS =		sysutils/findlib \
			sysutils/ggrep \
			textproc/gdiff

# asks questions at the end if it does better than expected
REGRESS_IS_INTERACTIVE = Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		MAKE_PROGRAM=${MAKE_PROGRAM}

REGRESS_TARGET =	test
SUBST_VARS +=		MAKE_PROGRAM

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/pycaml/Makefile

.include <bsd.port.mk>

.if defined(MODOCAML_NATIVE) && ${MODOCAML_NATIVE:L} == "yes"
ALL_TARGET =		world
.endif
