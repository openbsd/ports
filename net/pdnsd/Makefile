# $OpenBSD: Makefile,v 1.1.1.1 2001/06/14 14:46:07 camield Exp $

COMMENT=		"threaded dns daemon, optimized for caching"

DISTNAME=		pdnsd-1.1.5
CATEGORIES=     	net
NEED_VERSION=		1.414
HOMEPAGE=		http://home.t-online.de/home/Moestl/

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

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
