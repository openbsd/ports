# $OpenBSD: Makefile,v 1.12 2000/09/05 23:28:13 matt Exp $

DISTNAME=       dejagnu-1.3
CATEGORIES=	devel
NEED_VERSION=	1.320

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

MAINTAINER=	niklas@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= dejagnu

BUILD_DEPENDS=	expect::lang/expect
LIB_DEPENDS=	tk83.1.3:x11/tk/8.3

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+=--with-tclinclude=${PREFIX}/include/tcl8.3/generic \
		--with-tkinclude=${PREFIX}/include/tk8.3/generic

post-extract:
	@rm -rf ${WRKSRC}/{expect,tcl}

post-build:
	cd ${WRKSRC}; ${MAKE} info

post-install:
	cd ${WRKSRC}; ${MAKE} install-info

.include <bsd.port.mk>
