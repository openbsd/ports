# $OpenBSD: Makefile,v 1.4 1999/04/09 22:36:48 marc Exp $

DISTNAME=	tar-1.12
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

MAINTAINER=	niklas@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g

post-install:
	strip ${PREFIX}/bin/gtar
	strip ${PREFIX}/libexec/grmt
	if [ ! -f ${PREFIX}/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	install-info ${PREFIX}/info/tar.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
