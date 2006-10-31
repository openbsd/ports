# $OpenBSD: Makefile,v 1.12 2006/10/31 14:58:46 aanriot Exp $
# Uses pthreads

COMMENT=		"threaded DNS daemon, optimized for caching"

# archs that have pthreads library in
# good enough shape to run this app.
ONLY_FOR_ARCHS=	i386

DISTNAME=		pdnsd-1.2.5-par
PKGNAME=		${DISTNAME:S/-par//}
CATEGORIES=     	net
HOMEPAGE=		http://www.phys.uu.nl/~rombouts/pdnsd/

WRKDIST=		${WRKDIR}/${DISTNAME:S/-par//}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=		${HOMEPAGE}/releases/

NO_REGRESS=		Yes

USE_GMAKE=		yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-target=BSD \
			--with-random-device=arc4random \
			--enable-strict-rfc2181 \
			--with-cachedir="/var/pdnsd" \
			--with-default-id=_pdnsd

post-build:
	@perl -pi -e "s,/usr/share/doc/,${PREFIX}/share/doc/," \
		${WRKSRC}/doc/pdnsd.8.in

.include <bsd.port.mk>
