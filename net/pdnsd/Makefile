# $OpenBSD: Makefile,v 1.8 2002/12/29 21:14:11 fgsch Exp $
# Uses pthreads

COMMENT=		"threaded DNS daemon, optimized for caching"

# archs that have pthreads library in
# good enough shape to run this app.
ONLY_FOR_ARCHS=	i386

DISTNAME=		pdnsd-1.1.7a
CATEGORIES=     	net
HOMEPAGE=		http://home.t-online.de/home/Moestl/

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-target=BSD \
			--with-random-device=arc4random \
			--enable-strict-rfc2181 \
			--with-cachedir="/var/pdnsd" \
			--with-default-id=pdnsd

DOCFILES=		faq.txt intro.txt manual.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pdnsd
	${INSTALL_DATA} ${WRKBUILD}/doc/pdnsd.conf ${PREFIX}/share/examples/pdnsd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdnsd
.for file in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/txt/${file} ${PREFIX}/share/doc/pdnsd
.endfor

.include <bsd.port.mk>
