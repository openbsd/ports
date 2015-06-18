# $OpenBSD: Makefile,v 1.11 2015/06/18 07:28:36 bentley Exp $

COMMENT-main=	Dictionary Server Protocol client
COMMENT-server=	Dictionary Server Protocol server

V=		1.9.15
DISTNAME=	dictd-$V

PKGNAME-main=	dictd-client-$V
PKGNAME-server=	dictd-server-$V
REVISION-main=	2
REVISION-server=0

CATEGORIES=	net education

HOMEPAGE=	http://www.dict.org

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dict/}

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-local-zlib \
		--enable-dictorg

MULTI_PACKAGES=	-main -server

NO_TEST=	Yes

pre-build:
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/*.[18]
	@perl -pi -e "s,/usr/sbin,${LOCALBASE}/sbin,g" ${WRKSRC}/*.[18]
	@perl -pi -e "s,/usr/share,${LOCALBASE}/share,g" ${WRKSRC}/*.[18]

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dictd/
	${INSTALL_DATA} ${WRKSRC}/example* \
		${PREFIX}/share/examples/dictd

.include <bsd.port.mk>
