# $OpenBSD: Makefile,v 1.10 2013/03/23 21:58:16 sthen Exp $

COMMENT-main =	Wireless Networking in the Developing World, English edition
COMMENT-es =	Wireless Networking in the Developing World, Spanish edition
COMMENT-fr =	Wireless Networking in the Developing World, French edition
COMMENT-ar =	Wireless Networking in the Developing World, Arabic edition
COMMENT-pt =	Wireless Networking in the Developing World, Portuguese ed.
COMMENT-id =	Wireless Networking in the Developing World, Indonesian ed.

PKGNAME-main =	wndw-2.0
PKGNAME-es =	wndw-es-3.0
PKGNAME-fr =	wndw-fr-2.0
PKGNAME-ar =	wndw-ar-2.0
PKGNAME-pt =	wndw-pt-1.0
PKGNAME-id =	wndw-id-2.0

REVISION-ar=	0

DISTNAME =	wndw

CATEGORIES =	books net

# Creative Commons Attribution-ShareAlike 3.0
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =-main -es -fr -ar -pt -id

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Higher-quality printable PDFs (109MB) are also available at the homepage.
# Also available in print.
HOMEPAGE =	http://wndw.net/

MASTER_SITES =	${HOMEPAGE}pdf/wndw2-en/
MASTER_SITES0 =	${HOMEPAGE}pdf/wndw3-es/
MASTER_SITES1 =	${HOMEPAGE}pdf/wndw2-fr/
MASTER_SITES2 =	${HOMEPAGE}pdf/wndw2-ar/
MASTER_SITES3 =	${HOMEPAGE}pdf/wndw-pt/
MASTER_SITES4 =	${HOMEPAGE}pdf/wndw-id/ \
		http://opensource.telkomspeedy.com:5432/furusato/files/

DISTFILES =	wndw2-ebook.pdf \
		wndw3-es-ebook.pdf:0 \
		wndw2-fr-ebook.pdf:1 \
		wndw2-ar-ebook.pdf:2 \
		wndw-pt-ebook.pdf:3 \
		wndw-id-ebook.pdf:4

EXTRACT_ONLY =

PKG_ARCH =	*

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wndw
.for i in ${DISTFILES:C/\:[0-9]//}
	${INSTALL_DATA} ${FULLDISTDIR}/$i ${PREFIX}/share/doc/wndw
.endfor

.include <bsd.port.mk>
