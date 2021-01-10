# $OpenBSD$
COMMENT =	convert PDF files to SVG
GH_ACCOUNT =	dawbarton
GH_PROJECT =	pdf2svg
GH_TAGNAME =	v0.2.3

CATEGORIES =	graphics

HOMEPAGE = https://github.com/dawbarton/pdf2svg

MAINTAINER = Björn Gohla <b.gohla@unix.net>

# License GPL v2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c
WANTLIB += cairo
WANTLIB += glib-2.0
WANTLIB += gobject-2.0
WANTLIB += intl
WANTLIB += poppler-glib

LIB_DEPENDS += graphics/cairo
LIB_DEPENDS += print/poppler

SEPARATE_BUILD = Yes
USE_GMAKE = Yes
CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
