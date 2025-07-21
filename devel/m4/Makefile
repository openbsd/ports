COMMENT=	GNU m4

DISTNAME=	m4-1.4.20
REVISION=	0
CATEGORIES=	devel
SITES=		${SITE_GNU:=m4/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/m4/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g" \
		--disable-nls \
		--without-libiconv-prefix

# $HOME must exist for cvs that is used by tests/test-vc-list-files-cvs.sh
PORTHOME=	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4

.include <bsd.port.mk>
