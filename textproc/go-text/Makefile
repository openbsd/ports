# $OpenBSD: Makefile,v 1.11 2019/09/12 18:50:31 jsing Exp $

COMMENT =	Go text processing support
DISTNAME =	go-text-20190904
GH_ACCOUNT =	golang
GH_PROJECT =	text
GH_COMMIT =	3d0f7978add91030e5e8976ff65ccdd828286cba
CATEGORIES =	textproc devel

HOMEPAGE =	https://godoc.org/golang.org/x/text

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	bin lib

# message/pipeline depends on go-tools, which creates an import loop...
# we also do not package go-tools as a go module.

_MAIN =		golang.org/x/text
_SUBPKGS =	cases \
		collate \
		collate/build \
		collate/tools/colcmp \
		currency \
		date \
		encoding \
		encoding/charmap \
		encoding/htmlindex \
		encoding/ianaindex \
		encoding/internal \
		encoding/internal/enctest \
		encoding/internal/identifier \
		encoding/japanese \
		encoding/korean \
		encoding/simplifiedchinese \
		encoding/traditionalchinese \
		encoding/unicode \
		encoding/unicode/utf32 \
		feature/plural \
		internal \
		internal/catmsg \
		internal/cldrtree \
		internal/colltab \
		internal/export/idna \
		internal/export/unicode \
		internal/format \
		internal/gen \
		internal/gen/bitfield \
		internal/language \
		internal/language/compact \
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
		message/catalog \
		number \
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
		unicode/runenames \
		width

ALL_TARGET =	${_MAIN} ${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
