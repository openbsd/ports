COMMENT=		philosophy of problem solving, applied to Forth

DISTNAME=		thinking-forth-color
PKGNAME=		thinking-forth-1.0
CATEGORIES=		books
REVISION=		0

HOMEPAGE=		https://thinking-forth.sourceforge.net/

# Creative Commons license
# attribute, non-commercial, share-alike
PERMIT_PACKAGE=	Yes

SITES=			${SITE_SOURCEFORGE:=thinking-forth/}
DISTFILES=		${DISTNAME}.pdf
EXTRACT_ONLY=

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/thinking-forth/
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} \
		${PREFIX}/share/doc/thinking-forth/

.include <bsd.port.mk>
