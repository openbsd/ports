COMMENT-main =	Wireless Networking in the Developing World, English edition
COMMENT-es =	Wireless Networking in the Developing World, Spanish edition
COMMENT-fr =	Wireless Networking in the Developing World, French edition
COMMENT-ar =	Wireless Networking in the Developing World, Arabic edition
COMMENT-pt =	Wireless Networking in the Developing World, Portuguese ed.
COMMENT-id =	Wireless Networking in the Developing World, Indonesian ed.
COMMENT-my =	Wireless Networking in the Developing World, Burmese ed.

PKGNAME-main =	wndw-3.0
PKGNAME-es =	wndw-es-3.0
PKGNAME-fr =	wndw-fr-2.0
PKGNAME-ar =	wndw-ar-2.0
PKGNAME-pt =	wndw-pt-1.0
PKGNAME-id =	wndw-id-2.0
PKGNAME-my =	wndw-my-3.0

REVISION=	1

DISTNAME =	wndw

CATEGORIES =	books net

# Creative Commons Attribution-ShareAlike 3.0
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =-main -es -fr -ar -pt -id -my

# High resolution print-ready PDFs are also available at the homepage
# e.g. http://wndw.net/pdf/wndw3-en/wndw3-print.pdf (English edition).
# Also available as printed books.
HOMEPAGE =	http://wndw.net/

SITES =		${HOMEPAGE}pdf/wndw3-en/
SITES.es =	${HOMEPAGE}pdf/wndw3-es/
SITES.fr =	${HOMEPAGE}pdf/wndw2-fr/
SITES.ar =	${HOMEPAGE}pdf/wndw2-ar/
SITES.pt =	${HOMEPAGE}pdf/wndw-pt/
SITES.id =	${HOMEPAGE}pdf/wndw-id/ \
		http://opensource.telkomspeedy.com:5432/furusato/files/
SITES.my =	${HOMEPAGE}pdf/wndw3-my/

DISTFILES =	wndw3-ebook.pdf \
		wndw3-cover.pdf

DISTFILES.es =	wndw3-es-ebook.pdf
DISTFILES.fr = 	wndw2-fr-ebook.pdf
DISTFILES.ar = 	wndw2-ar-ebook.pdf
DISTFILES.pt =	wndw-pt-ebook.pdf
DISTFILES.id =	wndw-id-ebook.pdf
DISTFILES.my = 	wndw3-my-ebook.pdf

PKG_ARCH =	*

EXTRACT_ONLY =
NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wndw
	for i in ${ALL_DISTFILES}; do \
		${INSTALL_DATA} ${FULLDISTDIR}/$$i ${PREFIX}/share/doc/wndw; \
	done

.include <bsd.port.mk>
