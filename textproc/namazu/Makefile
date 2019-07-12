# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:02 sthen Exp $

COMMENT=	small to medium scale full-text search engine
DISTNAME=	namazu-2.0.21
REVISION=	3

SHARED_LIBS+=	nmz 0.1	# .8.3

CATEGORIES=	textproc
HOMEPAGE=	http://www.namazu.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl m

MASTER_SITES=	${HOMEPAGE}stable/

LIB_DEPENDS=	devel/gettext,-runtime
BUILD_DEPENDS=	misc/p5-File-MMagic
RUN_DEPENDS=	archivers/unzip \
		misc/p5-File-MMagic

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/db

CONFIGURE_STYLE=gnu
CFLAGS+=	-I${LOCALBASE}/include
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/namazu

post-install:
	mv ${PREFIX}/share/namazu/doc ${PREFIX}/share/doc/namazu
	mv ${PREFIX}/share/namazu/etc/* ${PREFIX}/share/doc/namazu
	rmdir ${PREFIX}/share/namazu/etc

.include <bsd.port.mk>
