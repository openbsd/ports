# $OpenBSD: Makefile,v 1.2 1998/10/08 18:27:43 marc Exp $
#

DISTNAME=       dejagnu-1.3
CATEGORIES=	devel

MAINTAINER=	niklas@openbsd.org

MASTER_SITES=	${MASTER_SITE_GNU}

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
