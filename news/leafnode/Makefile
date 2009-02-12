# $OpenBSD: Makefile,v 1.48 2009/02/12 13:33:07 giovanni Exp $

COMMENT=		USENET software package designed for small sites

VERSION=		1.11.6
DISTNAME=		leafnode-${VERSION}
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		news

HOMEPAGE=		http://leafnode.sourceforge.net/

# MIT/BSD like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=leafnode/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		pcre::devel/pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var
CONFIGURE_ARGS+=	--with-lockfile=/var/spool/news/fetchnews.lck
CONFIGURE_ARGS+=	--with-ipv6
CONFIGURE_ARGS+=	--with-user=_news

DOCS=		README README-FQDN INSTALL FAQ.txt NEWS OLDNEWS

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/leafnode
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/leafnode
	cd ${WRKSRC} && $(INSTALL_DATA) ${DOCS} \
		${PREFIX}/share/doc/leafnode
	${INSTALL_DATA} ${WRKINST}/${SYSCONFDIR}/leafnode/* \
		${PREFIX}/share/examples/leafnode/

.include <bsd.port.mk>
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR}/leafnode
