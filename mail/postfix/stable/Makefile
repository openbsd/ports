# $OpenBSD: Makefile,v 1.63 2004/05/19 05:44:12 jakob Exp $

VERSION=	2.1.1

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION}p0

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_POSTFIX:=official/}

IPV6VERSION=	1.24
IPV6POSTFIX=	2.1.1

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
