# $OpenBSD: Makefile,v 1.5 1999/07/08 23:27:39 brad Exp $

DISTNAME=	squid-2.2.STABLE4
PKGNAME=	squid-2.2
CATEGORIES=	www
MASTER_SITES=	http://squid.nlanr.net/Squid/v2/2.2/
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	ports@openbsd.org

STRIP=		# won't install scripts correctly otherwise.
MAKEFILE=	makefile
SYSCONFDIR=	/etc/squid
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR} --localstatedir=/var/squid

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
