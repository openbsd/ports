COMMENT=	GNU m4

DISTNAME=	m4-1.4.19
CATEGORIES=	devel
SITES=		${SITE_GNU:=m4/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/m4/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g" \
		--disable-nls \
		--without-libiconv-prefix

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4

.include <bsd.port.mk>
