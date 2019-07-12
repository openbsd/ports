# $OpenBSD: Makefile,v 1.14 2019/07/12 20:48:25 sthen Exp $

COMMENT-main=	Dictionary Server Protocol client
COMMENT-server=	Dictionary Server Protocol server

V=		1.9.15
DISTNAME=	dictd-$V

PKGNAME-main=	dictd-client-$V
PKGNAME-server=	dictd-server-$V
REVISION-main=	3
REVISION-server=1

CATEGORIES=	net education

HOMEPAGE=	http://www.dict.org

# GPL v2
PERMIT_PACKAGE=	Yes
WANTLIB=		c z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dict/}

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-local-zlib \
		--enable-dictorg

MULTI_PACKAGES=	-main -server

NO_TEST=	Yes

pre-build:
	@sed -i -e "s,/etc,${SYSCONFDIR},g;" \
		-e "s,/usr/sbin,${LOCALBASE}/sbin,g;" \
		-e "s,/usr/share,${LOCALBASE}/share,g" ${WRKSRC}/*.[18]

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dictd/
	${INSTALL_DATA} ${WRKSRC}/example* \
		${PREFIX}/share/examples/dictd

.include <bsd.port.mk>
