# $OpenBSD: Makefile,v 1.26 2003/03/30 22:23:28 rohee Exp $

COMMENT=		"USENET software package designed for small sites"

VERSION=		1.9.36
DISTNAME=		leafnode-${VERSION}.rel
PKGNAME=		leafnode-${VERSION}
CATEGORIES=		news

HOMEPAGE=		http://www.leafnode.org/

MAINTAINER=		Bruno Rohée <rohee@openbsd.org>

# MIT/BSD like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=leafnode/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		pcre::devel/pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var
CONFIGURE_ARGS+=	--with-lockfile=/var/spool/news/fetchnews.lck
CONFIGURE_ARGS+=	--with-ipv6

DOCS=		README README-FQDN INSTALL FAQ.txt

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/leafnode
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/leafnode
	cd ${WRKSRC} && $(INSTALL_DATA) ${DOCS} \
		${PREFIX}/share/doc/leafnode
	${INSTALL_DATA} ${WRKINST}/${SYSCONFDIR}/leafnode/* \
		${PREFIX}/share/examples/leafnode/

.include <bsd.port.mk>
