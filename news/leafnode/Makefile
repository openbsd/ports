COMMENT=		USENET software package designed for small sites

DISTNAME=		leafnode-1.11.12
CATEGORIES=		news

HOMEPAGE=		https://www.leafnode.org/

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
SYSCONFDIR=		${BASESYSCONFDIR}/leafnode

DOCS=		README README-FQDN INSTALL FAQ.txt NEWS OLDNEWS
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/leafnode

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/leafnode
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/leafnode
	cd ${WRKSRC} && $(INSTALL_DATA) ${DOCS} \
		${PREFIX}/share/doc/leafnode

.include <bsd.port.mk>
