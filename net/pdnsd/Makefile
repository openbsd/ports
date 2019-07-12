# $OpenBSD: Makefile,v 1.26 2019/07/12 20:48:42 sthen Exp $

COMMENT=		threaded DNS daemon, optimized for caching

DISTNAME=		pdnsd-1.2.9a-par
PKGNAME=		${DISTNAME:S/-par//}
CATEGORIES=		net
MASTER_SITES=		${HOMEPAGE}/releases/
REVISION=		0

HOMEPAGE=		http://members.home.nl/p.a.rombouts/pdnsd/

WRKDIST=		${WRKDIR}/${DISTNAME:S/-par//}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

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
