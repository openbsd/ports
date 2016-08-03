# $OpenBSD: Makefile,v 1.2 2016/08/03 09:34:39 ajacoutot Exp $

COMMENT =	Go text processing support
DISTNAME =	go-text-20160510
GH_ACCOUNT =	golang
GH_PROJECT =	text
GH_COMMIT =	f773ec03ce334298742df7f3108fc0d402646d22
CATEGORIES =	textproc devel
REVISION =	0

HOMEPAGE =	https://godoc.org/golang.org/x/text

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	bin lib

_MAIN =		golang.org/x/text
_SUBPKGS =	cases collate collate/build collate/colltab \
		collate/tools/colcmp currency encoding encoding/charmap \
		encoding/htmlindex encoding/ianaindex encoding/internal \
		encoding/internal/identifier encoding/japanese encoding/korean \
		encoding/simplifiedchinese encoding/traditionalchinese \
		encoding/unicode internal internal/colltab internal/format \
		internal/format/plural internal/gen internal/number \
		internal/stringset internal/tag internal/testtext \
		internal/triegen internal/ucd internal/utf8internal language \
		language/display message runes search secure secure/precis \
		transform unicode unicode/bidi unicode/cldr unicode/norm \
		unicode/rangetable width
ALL_TARGET =	${_MAIN} ${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
