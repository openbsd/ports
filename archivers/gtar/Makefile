# $OpenBSD: Makefile,v 1.5 1999/07/17 05:05:04 brad Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

MAINTAINER=	niklas@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g

post-extract:
	@${RM} -f ${WRKSRC}/doc/*.info*

post-install:
	@strip ${PREFIX}/bin/gtar
	@strip ${PREFIX}/libexec/grmt
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/tar.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
