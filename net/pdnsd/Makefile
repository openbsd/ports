# $OpenBSD: Makefile,v 1.14 2009/01/02 22:28:21 sthen Exp $

COMMENT=		threaded DNS daemon, optimized for caching

DISTNAME=		pdnsd-1.2.7-par
PKGNAME=		${DISTNAME:S/-par//}
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
