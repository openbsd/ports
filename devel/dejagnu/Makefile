# $OpenBSD: Makefile,v 1.14 2000/10/22 14:03:05 espie Exp $

DISTNAME=	dejagnu-1.3
CATEGORIES=	devel
NEED_VERSION=	1.324
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= dejagnu

HOMEPAGE=	http://www.gnu.org/software/dejagnu/

LIB_DEPENDS=	tk83.1.3:x11/tk/8.3
BUILD_DEPENDS=	expect::lang/expect

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--with-tclinclude="${PREFIX}/include/tcl8.3/generic" \
		--with-tkinclude="${PREFIX}/include/tk8.3/generic"

ALL_TARGET=	all info
INSTALL_TARGET=	install install-info

post-extract:
	@rm -rf ${WRKSRC}/{expect,tcl}
	@cp -f ${FILESDIR}/{config.guess,config.sub} ${WRKSRC}

.include <bsd.port.mk>
