# $OpenBSD: Makefile,v 1.1.1.1 2009/08/14 00:00:18 sthen Exp $

COMMENT=	small to medium scale full-text search engine
DISTNAME=	namazu-2.0.19

SHARED_LIBS+=	nmz 0.0	# .8.1

CATEGORIES=	textproc
HOMEPAGE=	http://www.namazu.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=	${HOMEPAGE}stable/

MODULES=	devel/gettext
BUILD_DEPENDS=	::misc/p5-File-MMagic
RUN_DEPENDS=	${BUILD_DEPENDS} \
		::archivers/unzip

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--localstatedir=/var/db
CFLAGS+=	-I${LOCALBASE}/include
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/namazu

post-install:
	mv ${PREFIX}/share/namazu/doc ${PREFIX}/share/doc/namazu
	mv ${PREFIX}/share/namazu/etc/* ${PREFIX}/share/doc/namazu
	rmdir ${PREFIX}/share/namazu/etc

.include <bsd.port.mk>
