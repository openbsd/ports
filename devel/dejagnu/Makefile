# $OpenBSD: Makefile,v 1.22 2004/12/21 01:52:03 espie Exp $

COMMENT=	"framework to test programs"

DISTNAME=	dejagnu-1.4.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

LIB_DEPENDS=	tk84:tk-8.4.*:x11/tk/8.4
RUN_DEPENDS=	::lang/expect

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tclinclude="${PREFIX}/include/tcl8.4/generic" \
		--with-tkinclude="${PREFIX}/include/tk8.4/generic"
CONFIGURE_ENV=	ac_cv_path_tclsh=${PREFIX}/bin/tclsh8.4

ALL_TARGET=	all
INSTALL_TARGET=	install

post-build:
	@cd ${WRKBUILD}/doc && makeinfo --no-split dejagnu.texi

post-install:
	${INSTALL_DATA} ${WRKBUILD}/doc/dejagnu.info ${PREFIX}/info

.include <bsd.port.mk>
