# $OpenBSD: Makefile,v 1.23 2003/01/21 16:58:11 marcm Exp $

COMMENT=		"USENET software package designed for small sites"

VERSION=		1.9.32
DISTNAME=		leafnode-${VERSION}.rel
PKGNAME=		leafnode-${VERSION}
CATEGORIES=		news

HOMEPAGE=		http://www.leafnode.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL/LGPL/Other
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
