# $OpenBSD: Makefile,v 1.3 2000/07/03 21:14:38 brad Exp $

DISTNAME=       dejagnu-19990614
CATEGORIES=	devel lang/egcs
NEED_VERSION=	 1.302

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://gcc.gnu.org/pub/gcc/infrastructure/

BUILD_DEPENDS=	expect::lang/expect
LIB_DEPENDS=	tk83.1.3:x11/tk/8.3

WRKSRC=${WRKDIST}/dejagnu
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tclinclude=${PREFIX}/include/tcl8.3/generic \
		--with-tkinclude=${PREFIX}/include/tk8.3/generic

post-extract:
	@rm -rf ${WRKSRC}/{expect,tcl}

post-build:
	cd ${WRKSRC}; ${MAKE} info

INSTALL_TARGET=install install-info

.include <bsd.port.mk>
