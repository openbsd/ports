# $OpenBSD: Makefile,v 1.4 1999/05/22 18:23:46 brad Exp $

DISTNAME=	squid-2.2.STABLE3
PKGNAME=	squid-2.2
CATEGORIES=	www
MASTER_SITES=	ftp://squid.nlanr.net/pub/squid-2/STABLE/ \
		ftp://www.unimelb.edu.au/pub/cwis/servers/unix/squid/squid-2/STABLE/ \
		ftp://sunsite.auc.dk/pub/infosystems/squid/squid-2/STABLE/ \
		ftp://ftp.net.lut.ac.uk/squid/squid-2/STABLE/
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
