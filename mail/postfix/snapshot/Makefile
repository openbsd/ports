# $OpenBSD: Makefile,v 1.84 2004/06/10 21:15:24 jakob Exp $

VERSION=	2.2-20040504

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_POSTFIX:=experimental/}

IPV6VERSION=	1.24
IPV6POSTFIX=	${VERSION}

TLSHOMEPAGE=	http://www.aet.tu-cottbus.de/personen/jaenicke/pfixtls/
SUBST_VARS+=	TLSHOMEPAGE

IPV6HOMEPAGE=	http://www.ipnet6.org/postfix/
SUBST_VARS+=	IPV6HOMEPAGE

MAKE_CCARGS+=	-DHAS_SSL
MAKE_AUXLIBS+=	-lssl -lcrypto

PATCH_DIST_STRIP=-p1
PATCHFILES+=	tls+ipv6-${IPV6VERSION}-pf-${IPV6POSTFIX}.patch.gz:0
MASTER_SITES0=	http://www.ipnet6.org/postfix/download/

post-patch:
	@find ${WRKSRC} -type f -name '*.bak.orig' -print | xargs rm

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix/tls
	@${INSTALL_DATA} ${WRKSRC}/pfixtls/doc/* ${PREFIX}/share/doc/postfix/tls

.include <bsd.port.mk>
