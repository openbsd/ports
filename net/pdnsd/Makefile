# $OpenBSD: Makefile,v 1.15 2009/03/23 09:54:36 ajacoutot Exp $

COMMENT=		threaded DNS daemon, optimized for caching

DISTNAME=		pdnsd-1.2.7-par
PKGNAME=		${DISTNAME:S/-par//}p0
CATEGORIES=     	net
MASTER_SITES=		${HOMEPAGE}/releases/

HOMEPAGE=		http://www.phys.uu.nl/~rombouts/pdnsd/

WRKDIST=		${WRKDIR}/${DISTNAME:S/-par//}

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

NO_REGRESS=		Yes

USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-ipv6 \
			--enable-strict-rfc2181 \
			--with-cachedir="/var/pdnsd" \
			--with-default-id=_pdnsd \
			--with-random-device=arc4random \
			--with-target=BSD

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdnsd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pdnsd
	${INSTALL_DATA} ${WRKSRC}/doc/txt/*.txt ${PREFIX}/share/doc/pdnsd
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/pdnsd.conf.sample \
	    ${PREFIX}/share/examples/pdnsd/pdnsd.conf

.include <bsd.port.mk>
