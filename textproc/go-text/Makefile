# $OpenBSD: Makefile,v 1.3 2016/08/21 14:23:05 czarkoff Exp $

COMMENT =	Go text processing support
DISTNAME =	go-text-20160816
GH_ACCOUNT =	golang
GH_PROJECT =	text
GH_COMMIT =	d69c40b4be55797923cec7457fac7a244d91a9b6
CATEGORIES =	textproc devel

HOMEPAGE =	https://godoc.org/golang.org/x/text

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	bin lib

_MAIN =		golang.org/x/text
_SUBPKGS =	cases \
		collate \
		collate/build \
		collate/colltab \
		collate/tools/colcmp \
		currency \
		encoding \
		encoding/charmap \
		encoding/htmlindex \
		encoding/ianaindex \
		encoding/internal \
		encoding/internal/identifier \
		encoding/japanese \
		encoding/korean \
		encoding/simplifiedchinese \
		encoding/traditionalchinese \
		encoding/unicode \
		encoding/unicode/utf32 \
		internal \
		internal/colltab \
		internal/format \
		internal/format/plural \
		internal/gen \
		internal/number \
		internal/stringset \
		internal/tag \
		internal/testtext \
		internal/triegen \
		internal/ucd \
		internal/utf8internal \
		language \
		language/display \
		message \
		runes \
		search \
		secure \
		secure/bidirule \
		secure/precis \
		transform \
		unicode \
		unicode/bidi \
		unicode/cldr \
		unicode/norm \
		unicode/rangetable \
		width
ALL_TARGET =	${_MAIN} ${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
