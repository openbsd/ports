# $OpenBSD: Makefile,v 1.4 1999/03/29 21:22:39 brad Exp $

DISTNAME=       dejagnu-1.3
CATEGORIES=	devel

MAINTAINER=	niklas@openbsd.org

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= dejagnu

BUILD_DEPENDS=	expect:${PORTSDIR}/lang/expect

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-tclinclude=${PREFIX}/include/tcl8.0/generic \
		--with-tkinclude=${PREFIX}/include/tk8.0/generic

post-extract:
	@rm -rf ${WRKSRC}/{expect,tcl}

post-build:
	cd ${WRKSRC}; ${MAKE} info

post-install:
	cd ${WRKSRC}; ${MAKE} install-info
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/dejagnu.info ${PREFIX}/info/dir

.include <bsd.port.mk>
