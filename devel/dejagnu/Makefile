# $OpenBSD: Makefile,v 1.23 2004/12/29 06:33:28 sturm Exp $

COMMENT=	"framework to test programs"

DISTNAME=	dejagnu-1.4.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

LIB_DEPENDS=	tcl84:tcl-8.4.*:lang/tcl/8.4
RUN_DEPENDS=	:expect-*:lang/expect,no_tk

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tclinclude="${LOCALBASE}/include/tcl8.4/generic"
CONFIGURE_ENV=	ac_cv_path_tclsh=${LOCALBASE}/bin/tclsh8.4

ALL_TARGET=	all
INSTALL_TARGET=	install

post-build:
	@cd ${WRKBUILD}/doc && makeinfo --no-split dejagnu.texi

post-install:
	${INSTALL_DATA} ${WRKBUILD}/doc/dejagnu.info ${PREFIX}/info

.include <bsd.port.mk>
