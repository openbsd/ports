# $OpenBSD: Makefile,v 1.7 2012/04/28 10:51:44 ajacoutot Exp $

COMMENT=	small to medium scale full-text search engine
DISTNAME=	namazu-2.0.21

SHARED_LIBS+=	nmz 0.1	# .8.3

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
BUILD_DEPENDS=	misc/p5-File-MMagic
RUN_DEPENDS=	archivers/unzip \
		misc/p5-File-MMagic

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/db

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CFLAGS+=	-I${LOCALBASE}/include
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/namazu

post-install:
	mv ${PREFIX}/share/namazu/doc ${PREFIX}/share/doc/namazu
	mv ${PREFIX}/share/namazu/etc/* ${PREFIX}/share/doc/namazu
	rmdir ${PREFIX}/share/namazu/etc

.include <bsd.port.mk>
