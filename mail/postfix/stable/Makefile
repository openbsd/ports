# $OpenBSD: Makefile,v 1.60 2004/04/25 10:36:40 jakob Exp $

VERSION=	2.1.0

DISTNAME=	postfix-${VERSION}
PKGNAME=	postfix-${VERSION}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_POSTFIX:=official/}

IPV6VERSION=	1.22
IPV6POSTFIX=	2.1.0

TLSHOMEPAGE=	http://www.aet.tu-cottbus.de/personen/jaenicke/pfixtls/
SUBST_VARS+=	TLSHOMEPAGE

IPV6HOMEPAGE=	http://www.ipnet6.org/postfix/
SUBST_VARS+=	IPV6HOMEPAGE

MAKE_CCARGS+=	-DHAS_SSL
MAKE_AUXLIBS+=	-lssl -lcrypto

PATCH_DIST_STRIP=-p1
PATCHFILES+=	tls+ipv6-${IPV6VERSION}-pf-${IPV6POSTFIX}.patch.gz:0
MASTER_SITES0=	ftp://ftp.suse.com/pub/people/choeger/postfix-2.1/source/

post-patch:
	@find ${WRKSRC} -type f -name '*.bak.orig' -print | xargs rm

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfix/tls
	@${INSTALL_DATA} ${WRKSRC}/pfixtls/doc/* ${PREFIX}/share/doc/postfix/tls

.include <bsd.port.mk>
