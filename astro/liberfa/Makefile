COMMENT=	Essential Routines for Fundamental Astronomy

V=		2.0.1
DISTNAME=	erfa-$V
PKGNAME=	liberfa-$V
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS += erfa                      0.0 # 1.8.1

CATEGORIES=	astro

HOMEPAGE=	https://github.com/liberfa/erfa

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m

SITES=		https://github.com/liberfa/erfa/releases/download/v$V/

MODULES=	devel/meson

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/liberfa
	${INSTALL_DATA} ${WRKSRC}/{INFO,README*,LICENSE} \
		${PREFIX}/share/doc/liberfa

.include <bsd.port.mk>
