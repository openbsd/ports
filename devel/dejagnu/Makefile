# $OpenBSD: Makefile,v 1.10 2000/04/09 17:36:16 espie Exp $

DISTNAME=       dejagnu-1.3
CATEGORIES=	devel
NEED_VERSION=	 1.230
FAKE=No

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= dejagnu

BUILD_DEPENDS=	expect::lang/expect

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-tclinclude=${PREFIX}/include/tcl8.0/generic \
		--with-tkinclude=${PREFIX}/include/tk8.0/generic

post-extract:
	@rm -rf ${WRKSRC}/{expect,tcl}

post-build:
	cd ${WRKSRC}; ${MAKE} info

post-install:
	cd ${WRKSRC}; ${MAKE} install-info
	@install-info ${PREFIX}/info/dejagnu.info ${PREFIX}/info/dir

.include <bsd.port.mk>
