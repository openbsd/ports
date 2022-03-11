COMMENT=		versatile macro assembler for 8-bit microprocessors

GH_ACCOUNT=		dasm-assembler
GH_PROJECT=		dasm
GH_TAGNAME=		2.20.14

CATEGORIES=		devel

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE= Yes

WANTLIB += c

WRKDIST=		${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} $(PREFIX)/share/doc/dasm
	${INSTALL_DATA} ${WRKSRC}/docs/sources/*.tex $(PREFIX)/share/doc/dasm
	${INSTALL_DATA_DIR} $(PREFIX)/share/doc/dasm/images
	${INSTALL_DATA} ${WRKSRC}/docs/sources/images/illegal.png $(PREFIX)/share/doc/dasm/images
	${INSTALL_DATA} ${WRKSRC}/docs/dasm.pdf $(PREFIX)/share/doc/dasm

.include <bsd.port.mk>
