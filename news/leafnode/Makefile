# $OpenBSD: Makefile,v 1.62 2019/07/12 20:48:53 sthen Exp $

COMMENT=		USENET software package designed for small sites

DISTNAME=		leafnode-1.11.11
REVISION=		0
CATEGORIES=		news

HOMEPAGE=		http://leafnode.sourceforge.net/

# MIT/BSD like
PERMIT_PACKAGE=	Yes

WANTLIB=		c pcre

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=leafnode/}
EXTRACT_SUFX=		.tar.xz

LIB_DEPENDS=		devel/pcre

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-lockfile=/var/spool/news/fetchnews.lck
CONFIGURE_ARGS+=	--with-user=_news \
			--with-group=_news

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
