# $OpenBSD: Makefile,v 1.1.1.1 2008/10/25 10:29:06 jasper Exp $

COMMENT=		philosophy of problem solving, applied to Forth

DISTNAME=		thinking-forth-color
PKGNAME=		thinking-forth-1.0
CATEGORIES=		books

HOMEPAGE=		http://thinking-forth.sourceforge.net/

# Creative Commons license
# attribute, non-commercial, share-alike
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=thinking-forth/}
DISTFILES=		${DISTNAME}.pdf
EXTRACT_ONLY=

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/thinking-forth/
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} \
		${PREFIX}/share/doc/thinking-forth/

.include <bsd.port.mk>
