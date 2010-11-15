# $OpenBSD: Makefile,v 1.33 2010/11/15 19:45:57 espie Exp $

COMMENT=	framework to test programs

DISTNAME=	dejagnu-1.4.3
REVISION =	6
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/tcl

BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS=	lang/expect,no_tk \
		${MODTCL_RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tclinclude="${MODTCL_INCDIR}/generic"
CONFIGURE_ENV=	ac_cv_path_tclsh=${MODTCL_BIN}

ALL_TARGET=	all
INSTALL_TARGET=	install
MAKE_FLAGS=mkinstalldirs='mkdir -p --'
USE_GROFF =	Yes

post-build:
	@cd ${WRKBUILD}/doc && makeinfo --no-split dejagnu.texi

post-install:
	${INSTALL_DATA} ${WRKBUILD}/doc/dejagnu.info ${PREFIX}/info

.include <bsd.port.mk>
