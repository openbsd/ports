# $OpenBSD: Makefile,v 1.6 1999/09/06 17:17:52 brad Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

NEED_VERSION=	1.114

MAINTAINER=	niklas@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g

post-extract:
	@${RM} -f ${WRKSRC}/doc/*.info*

post-install:
	@${STRIP} ${PREFIX}/bin/gtar
	@${STRIP} ${PREFIX}/libexec/grmt
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/tar.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
