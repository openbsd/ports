# $OpenBSD: Makefile,v 1.11 2005/11/25 10:45:39 sturm Exp $
# Uses pthreads

COMMENT=		"threaded DNS daemon, optimized for caching"

# archs that have pthreads library in
# good enough shape to run this app.
ONLY_FOR_ARCHS=	i386

PORTNAME=		pdnsd-1.2.3
DISTNAME=		${PORTNAME}-par
PKGNAME=		${PORTNAME}
CATEGORIES=     	net
HOMEPAGE=		http://www.phys.uu.nl/~rombouts/pdnsd

WRKDIST=		${WRKDIR}/${PORTNAME}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=		${HOMEPAGE}/releases/

NO_REGRESS=		Yes

SEPARATE_BUILD=		concurrent

USE_GMAKE=		yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-target=BSD \
			--with-random-device=arc4random \
			--enable-strict-rfc2181 \
			--with-cachedir="/var/pdnsd" \
			--with-default-id=_pdnsd

DOCFILES=		faq.txt intro.txt manual.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pdnsd
	${INSTALL_DATA} ${WRKBUILD}/doc/pdnsd.conf ${PREFIX}/share/examples/pdnsd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdnsd
.for file in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/txt/${file} ${PREFIX}/share/doc/pdnsd
.endfor

.include <bsd.port.mk>
