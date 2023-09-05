COMMENT=	high-quality MPEG audio decoder

DISTNAME=	libmad-0.15.1b
REVISION=	7
CATEGORIES=	audio
HOMEPAGE=	https://www.underbit.com/products/mad/
SHARED_LIBS +=	mad                  2.1      # .2.1

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		ftp://ftp.mars.org/pub/mpeg/ \
		${SITE_SOURCEFORGE:=mad/}

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
