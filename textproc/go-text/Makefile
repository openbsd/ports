# $OpenBSD: Makefile,v 1.5 2017/09/08 17:10:43 jsing Exp $

COMMENT =	Go text processing support
DISTNAME =	go-text-20170824
GH_ACCOUNT =	golang
GH_PROJECT =	text
GH_COMMIT =	e56139fd9c5bc7244c76116c68e500765bb6db6b
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
		collate/tools/colcmp \
		currency \
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
		internal/colltab \
		internal/export/idna \
		internal/format \
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
		message/catalog \
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
