# $OpenBSD: Makefile,v 1.19 2002/12/14 09:02:02 fgsch Exp $

COMMENT=	"framework to test programs"

DISTNAME=	dejagnu-1.4.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

LIB_DEPENDS=	tk83.1.3::x11/tk/8.3
RUN_DEPENDS=	::lang/expect

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tclinclude="${PREFIX}/include/tcl8.3/generic" \
		--with-tkinclude="${PREFIX}/include/tk8.3/generic"
CONFIGURE_ENV=ac_cv_path_tclsh=${PREFIX}/bin/tclsh8.3

ALL_TARGET=	all
INSTALL_TARGET=	install

post-extract:

post-build:
	@cd ${WRKBUILD}/doc && makeinfo --no-split dejagnu.texi

post-install:
	@${INSTALL_DATA} ${WRKBUILD}/doc/dejagnu.info ${PREFIX}/info

.include <bsd.port.mk>
