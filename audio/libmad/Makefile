# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:34 sthen Exp $

COMMENT=	high-quality MPEG audio decoder

DISTNAME=	libmad-0.15.1b
REVISION=	6
CATEGORIES=	audio
HOMEPAGE=	http://www.underbit.com/products/mad/
SHARED_LIBS +=	mad                  2.1      # .2.1

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mlp64}
CONFIGURE_ARGS=	--enable-fpm=64bit
.endif

post-patch:
	@cp ${FILESDIR}/mad.pc.in ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/mad.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
