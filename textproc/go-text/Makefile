# $OpenBSD: Makefile,v 1.6 2018/03/14 14:15:40 jsing Exp $

COMMENT =	Go text processing support
DISTNAME =	go-text-20180216
GH_ACCOUNT =	golang
GH_PROJECT =	text
GH_COMMIT =	4e4a3210bb54bb31f6ab2cdca2edcc0b50c420c1
CATEGORIES =	textproc devel

HOMEPAGE =	https://godoc.org/golang.org/x/text

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

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
